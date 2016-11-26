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
    sql = "INSERT INTO days ( name ) VALUES ( '#{@name}' ) RETURNING *;"
    result = SqlRunner.run(sql)
    @id  = result[0]["id"].to_i
  end


  def self.all()
    sql = "SELECT * FROM days;"
    result = SqlRunner.run(sql)
    days = result.map{|day|Day.new(day)}
  end

  def self.find(id)
    sql = "SELECT * FROM days WHERE id = #{id};"
    result = SqlRunner.run(sql)
    day = Day.new(result[0])
  end

end