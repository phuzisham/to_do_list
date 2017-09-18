require("rspec")
require("pg")
require("list")
require("task")

DB = PG.connect({:dbname => "chore_list_test"})

RSpec.configure do |config|
  config.after(:each) do
    DB.exec("DELETE FROM lists *;")
    DB.exec("DELETE FROM tasks *;")
  end
end
