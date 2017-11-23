require_relative("../db/sql_runner")
require_relative("location")

class User

  attr_reader :id
  attr_accessor :name

  def initialize( options )
    @id = options['id'].to_i
    @name = options['name']
  end

  def save()
    sql = "INSERT INTO users
    (
      name
    )
    VALUES
    (
      $1
    )
    RETURNING id"
    values = [@name]
    user = SqlRunner.run( sql, values ).first
    @id = user['id'].to_i
  end


  def self.all()
    sql = "SELECT * FROM users"
    values = []
    users = SqlRunner.run(sql, values)
    result = User.map_items(users)
    return result
  end

  def self.delete_all()
    sql = "DELETE FROM users"
    values = []
    SqlRunner.run(sql, values)
  end

  def locations_visited
    sql = "
    SELECT locations.* FROM locations
    INNER JOIN visits
    ON visits.location_id = locations.id
    WHERE user_id = $1;"

    values = [@id]
    results_array = SqlRunner.run(sql, values)
    return Location.map(results_array)
  end

  def self.map_items(row)
    return rows.map { |row| User.new(row)}
  end

end
