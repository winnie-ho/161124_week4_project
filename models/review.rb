require ('pg')
require_relative ('../db/sql_runner')

class Review

attr_accessor :username, :review, :burger_id 
attr_reader :id
  
  def initialize(options)
    @username = options["username"]
    @review = options ["review"]
    @burger_id = options ["burger_id"]
    @id = options ["id"].to_i
  end

  def save()
    sql = "INSERT INTO reviews ( username, review, burger_id ) VALUES ( '#{@username}', '#{@review}', #{@burger_id}) RETURNING *;"
    result = SqlRunner.run(sql)
    @id = result[0]["id"].to_i
  end

  def delete()
    sql = "DELETE FROM reviews WHERE id = #{id};"
    SqlRunner.run(sql)
  end

  def self.all()
    sql = "SELECT * FROM reviews;"
    result = SqlRunner.run(sql)
    reviews = result.map{|hash|Review.new(hash)}
  end

  def self.find(id)
    sql = "SELECT * FROM reviews WHERE id = #{id};"
    review = SqlRunner.run(sql)
    result = Review.new(review[0])
  end

  def self.update(options)
    sql = "UPDATE reviews SET
          username = '#{options['username']}',
          review = '#{options['review']}',
          burger_id = '#{options['burger_id']}'
          WHERE id = #{options['id']};"
     SqlRunner.run(sql)
  end

   def self.delete(id)
     sql = "DELETE FROM reviews WHERE id = #{id};"
     SqlRunner.run(sql)
   end
end