class House

  attr_reader(:id, :name, :logo)

  def initialize(params)
    @id = params["id"].to_i
    @name = params["name"]
    @logo = params["logo"]
  end

  def save
    sql = "INSERT INTO houses (name, logo)
    VALUES ($1, $2)
    RETURNING *;"
    values = [@name, @logo]
    house = SqlRunner.run(sql, values)
    @id = house.first["id"].to_i
  end

  def self.all
    sql = "SELECT * FROM houses;"
    houses = SqlRunner.run(sql, [])
    results = houses.map{|house| House.new(house)}
    return results
  end

  def self.delete_all()
    sql = "DELETE FROM houses;"
    SqlRunner.run(sql, [])
  end

  def self.find(id)
    sql = "SELECT * FROM houses WHERE id = $1"
    result = SqlRunner.run(sql, [id])
    house = House.new(result.first)
    return house
  end

end
