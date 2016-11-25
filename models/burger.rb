require ('pg')
require_relative ('../db/sql_runner')

class Burger

  attr_accessor :name, :price, :restaurant, :deal, :day_id
  attr_reader :id

  def initialize (options)
    @id = options["id"].to_i
    @name = options["name"]
    @price = options["price"]
    @restaurant = options ["restaurant"]
    @deal = options ["deal"]
    @day_id = options["day_id"]
  end

  def save()
    sql = "INSERT INTO burgers ( name, price, restaurant, deal, day_id ) VALUES ( '#{@name}', #{@price}, '#{@restaurant}', '#{@deal}', #{@day_id} ) RETURNING *;"
    result = SqlRunner.run(sql)
    @id = result[0]["id"].to_i
  end

  def day_available()
    sql = "SELECT * FROM days WHERE id = #{@day_id};"
    result = SqlRunner.run(sql)
    return result[0]["name"]
  end



  def self.all()
    sql = "SELECT * FROM burgers;"
    result = SqlRunner.run(sql)
    burgers = result.map{|hash|Burger.new(hash)}
  end

end