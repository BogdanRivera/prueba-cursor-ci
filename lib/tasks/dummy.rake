namespace :db do
    namespace :pos do
      task :create do
        puts "db:pos:create (dummy)"
      end
  
      task :'schema:load' do
        puts "db:pos:schema:load (dummy)"
      end
  
      task :'test:prepare' do
        puts "db:pos:test:prepare (dummy)"
      end
    end
  
    task :'test:prepare' do
      puts "db:test:prepare (dummy)"
    end
  end