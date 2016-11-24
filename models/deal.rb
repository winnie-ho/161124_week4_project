require ('pg')
require_relative ('../db/sql_runner')

class Deal

  attr_accessor :name, :description
  attr_reader :id, :burger_id, :day_id

  def initialize (options)
    @id = options["id"].to_i
    @name = options["name"]
    @description = options["description"]
    @burger_id = options["burger_id"].to_i
    @day_id = options["day_id"].to_i
  end

  def save()
    sql = "INSERT INTO deals (name, description, burger_id, day_id) WHERE ('#{@name}', '#{@description}', '#{burger_id}', '#{@day_id}') RETURNING *;"
    result = SqlRunner.run(sql)
    @id = result[0]["id"].to_i
  end


end