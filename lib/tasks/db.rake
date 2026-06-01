namespace :db do
  namespace :pos do
    # Based on https://medium.com/@primazp/multiple-databases-in-rails-part-1-setup-48f6d207685a

    %w[drop create setup migrate rollback seed version schema:load schema:dump test:prepare].each do |task_name|
      task task_name do
        Rake::Task["db:pos:make_current"].execute
        Rake::Task["db:#{task_name}"].reenable
        Rake::Task["db:#{task_name}"].invoke
        Rake::Task["db:pos:restore_original"].execute
      end
    end

    task :make_current do
      # save current vars
      @original_config = {
        env_schema: ENV["SCHEMA"],
        config: Rails.application.config.dup,
      }

      # set config variables for custom database
      ENV["SCHEMA"] = "db/pos/schema.rb"
      Rails.application.config.paths["db"] = ["db/pos"]
      Rails.application.config.paths["db/migrate"] = ["db/pos/migrate"]
      Rails.application.config.paths["db/seeds.rb"] = ["db/pos/seeds.rb"]
      Rails.application.config.paths["config/database"] = ["config/pos_database.yml"]
    end

    task :restore_original do
      # reset config variables to original values
      ENV["SCHEMA"] = @original_config[:env_schema]
      Rails.application.config = @original_config[:config]

      @original_config = nil
    end
  end

  def primary_database?
    # Assuming this var would be set by the "make_current" task when making a
    # switch to the secondary database.
    @original_config.blank?
  end
end
