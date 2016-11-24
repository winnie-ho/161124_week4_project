require ('pg')
require_relative ('../db/sql_runner')

class Burger

  attr_accessor :name, :price
  attr_reader :id

  def initialize (options)
    @id = options["id"].to_i
    @name = options["name"]
    @price = options["price"]
  end

  def save()
    sql = "INSERT INTO burgers ( name, price ) VALUES ( '#{@name}', #{@price} ) RETURNING *;"
    result = SqlRunner.run(sql)
    @id = result[0]["id"].to_i
  end


end