#Activity log program

#Pseudocode
#Input: user types in name, activity type, miles and time
#Steps: program takes in the users information and stores it as an individual row in a previously created database that collects activity logs from users
#Output: user's activity gets logged and ranked by activity type and time

#=========================================

require 'sqlite3'
require 'faker'

#Create SQLite3 database
db = SQLite3::Database.new("activities.db")
db.results_as_hash = true

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS activities(
    id INTEGER PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    age INT,
    activity_type VARCHAR(255),
    miles INT,
    time INT,
    professional BOOLEAN
  )
SQL

#Create activities table
db.execute(create_table_cmd)

#Add a test activity
# db.execute("INSERT INTO kittens (name, age) VALUES ('Bob', 10)")
