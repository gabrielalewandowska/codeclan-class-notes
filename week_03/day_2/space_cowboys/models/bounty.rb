require("pg")
require("pry")


class Bounty

  attr_reader(:name, :value, :danger_level, :collected_by)

#Why a hash?
  def initialize(bounty_details)
    @id = bounty_details["id"].to_i if bounty_details["id"]
    @name = bounty_details["name"]
    @value = bounty_details["value"].to_i
    @danger_level = bounty_details["danger_level"].to_i
    @collected_by = bounty_details["collected_by"]
  end

  def save
    db = PG.connect({dbname: "bounties", host: "localhost"})
    sql = "
    INSERT INTO bounties
    (name, value, danger_level, collected_by)
    VALUES
    ($1, $2, $3, $4)
    RETURNING *;
    "
    values = [@name, @value, @danger_level, @collected_by]
    db.prepare("save", sql)
    @id = db.exec_prepared("save", values)[0]["id"].to_i
    db.close
  end

  def delete
    db = PG.connect({dbname: "bounties", host: "localhost"})
    sql = "
      DELETE FROM bounties
      WHERE id = $1;
    "
    values = [@id]
    db.prepare("delete_one", sql)
    db.exec_prepared("delete_one", values)
    db.close
  end

  def update
    db = PG.connect({ dbname: "bounties", host: "localhost"})
    sql = "
      UPDATE bounties
      SET
      (name, value, danger_level, collected_by)
      =
      ($1, $2, $3, $4)
      WHERE id = $5;
    "

    values = [@name, @value, @danger_level, @collected_by]
    db.prepare("update", sql)
    db.exec_prepared("update", values)
    db.close
  end
  end

end
