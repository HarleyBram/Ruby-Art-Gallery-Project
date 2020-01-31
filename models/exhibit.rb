require_relative('../db/sql_runner.sql')

class Exhibit

  attr_reader (:id, :name, :artist_id, :category, :info)

  def initialize
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @artist_id = options['artist_id'].to_i
    @category = options['category']
    @info = options['info']
  end

  def save
    sql = "INSERT INTO exhibits (name, artist, category, info) VALUES ($1, $2, $3, $4) RETURNING id"
    values = [@name, @artist_id, @category, @info]
    result = SqlRunner.run(sql, values)
    @id = result.first['id'].to_i
  end

  def self.all()
    sql = "SELECT * FROM exhibits"
    results = SqlRunner.run( sql )
    return results.map { |exhibit| Exhibit.new( exhibit ) }
  end

  def update()
    sql = "UPDATE SET(name, artist, category, info) =($1, $2, $3, $4) WHERE id = $5"
    values = [@name, @artist_id, @category, @info, @id]
    SqlRunner.run( sql, values )
  end


  def artist
    artist = Artist.find(@artist_id)
    return artist
  end

  def delete_all
    sql = "DELETE * FROM exhibits"
    SqlRunner.run(sql)
  end


  def self.find( id )
    sql = "SELECT * FROM exhibits
    WHERE id = $1"
    values = [id]
    results = SqlRunner.run( sql, values )
    return Exhibit.new( results.first )
  end

  def self.delete(id)
    sql = "DELETE FROM artists WHERE id = $1"
    value = [id]
    SqlRunner.run(sql, value)
  end


end
