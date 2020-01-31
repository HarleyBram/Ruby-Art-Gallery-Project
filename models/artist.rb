require_relative('../db/sql_runner.sql')

class Artist

  attr_reader( :id, :name, :info)

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @info = options['info']
  end

  def save
    sql = "INSERT INTO artists (name, info) VALUES ($1, $2) RETURNING id"
    values = [@name, @info]
    result = SqlRunner.run(sql, values)
    @id = result.first['id'].to_i
  end

  def self.all()
    sql = "SELECT * FROM artists"
    results = SqlRunner.run( sql )
    return results.map { |artist| Artist.new( artist ) }
  end

  def delete_all
    sql = "DELETE * FROM artists"
    SqlRunner.run(sql)
  end


  def self.delete(id)
    sql = "DELETE FROM artists WHERE id = $1"
    value = [id]
    SqlRunner.run(sql, value)
  end

  def self.find( id )
    sql = "SELECT * FROM artists
    WHERE id = $1"
    values = [id]
    results = SqlRunner.run( sql, values )
    return Artist.new( results.first )
  end

end
