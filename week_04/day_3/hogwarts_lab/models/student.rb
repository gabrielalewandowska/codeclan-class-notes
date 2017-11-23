require_relative("../db/sqlrunner.rb")
require_relative("house")

class Student

  attr_accessor(:first_name, :second_name,:house_id, :age)
  attr_reader(:id)

  def initialize(params)
    @id = params["id"].to_i
    @first_name = params["first_name"]
    @second_name = params["second_name"]
    @house_id = params["house_id"].to_i
    @age = params["age"].to_i
  end

  def save
    sql = "INSERT INTO students (first_name, second_name, house_id, age)
    VALUES ($1, $2, $3, $4)
    RETURNING *;"

    values = [@first_name, @second_name, @house_id, @age]
    student_data = SqlRunner.run(sql, values)
    @id = student_data.first['id'].to_i
  end

  def delete
    sql = "DELETE FROM students WHERE id = $1;"
    value = [@id]
    SqlRunner.run(sql, value)
  end

  def update
    sql = "UPDATE students SET (first_name, second_name, house_id, age)
    = ($1, $2, $3, $4) WHERE id = $5; "
    values = [@first_name, @second_name, @house_id, @age, @id]
    SqlRunner.run(sql, values)
  end

  def self.all
    sql = "SELECT * FROM students;"
    students = SqlRunner.run(sql, [])
    results = students.map {|student| Student.new(student)}
    return results
  end

  def self.delete_all()
    sql = "DELETE FROM students;"
    SqlRunner.run(sql, [])
  end

  def self.find(id)
    sql = "SELECT * FROM students WHERE id = $1;"
    values = [id]
    result = SqlRunner.run(sql, values)
    student = Student.new(result.first)
    return student
  end

  def house
    sql = "SELECT * FROM houses WHERE id = $1;"
    value = [@house_id]
    house_hash = SqlRunner.run(sql, value)
    house_object = House.new(house_hash.first)
    return house_object.name
  end

end
