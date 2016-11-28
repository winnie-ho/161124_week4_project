require ('pg')
require_relative ('../db/sql_runner')

class Restaurant

  attr_accessor :name, :address, :web, :phone, :map
  attr_reader :id

  def initialize (options)
    @id = options["id"].to_i
    @name = options["name"]
    @address = options ["address"]
    @web = options ["web"]
    @phone = options["phone"]
    @map = options["map"]
  end

  def save()
    sql = "INSERT INTO restaurants ( name, address, web, phone, map) VALUES ( '#{@name}', '#{@address}', '#{@web}', '#{@phone}', '#{@map}') RETURNING *;"
    result = SqlRunner.run(sql)
    @id = result[0]["id"].to_i
  end

  def burgers()
    sql = "SELECT * FROM burgers WHERE restaurant_id = #{id};"
    result = SqlRunner.run(sql)
    burgers = result.map{|hash|Burger.new(hash)}
  end

  def self.all()
    sql = "SELECT * FROM restaurants;"
    result = SqlRunner.run(sql)
    restaurants = result.map{|hash|Restaurant.new(hash)}
  end

  def self.find(id)
    sql = "SELECT * FROM restaurants WHERE id = #{id};"
    restaurant = SqlRunner.run(sql)
    result = Restaurant.new(restaurant[0])
  end

  def self.update(options)
    sql = "UPDATE restaurants SET
          name = '#{options['name']}',
          address = '#{options['address']}',
          web = '#{options['web']}',
          phone = '#{options['phone']}'
          map = '#{options['map']}'
          WHERE id = '#{options['id']}';"
   SqlRunner.run(sql)
  end

  def self.delete(id)
    sql = "DELETE FROM restaurants WHERE id = #{id};"
    SqlRunner.run(sql)
  end

  
end

