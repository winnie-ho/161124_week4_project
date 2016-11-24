require ('pg')
require_relative ('../db/sql_runner')

class Day
  attr_accessor :name
  attr_reader :id

  def initialize (options)
    @id = options["id"].to_i
    @name = options["name"]
  end

  def save()
    sql = "INSERT INTO days (name) VALUES ('#{@name}') RETURNING *;"
    result = SqlRunner.run(sql)
    @id  = result[0]["id"].to_i
  end

end