class Pokemon

  attr_accessor :id, :name, :type, :db

  def initialize(id:, name:, type:, db:)
    self.id = name
    self.type = type
    self.db = db
  end

  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?,?)", name, type)
  end

  self.find(id, db)
    name, type db.execute("SELECT name, type FROM pokemon WHERE id = ?", id)
    return self.new(id, name, type, db)
  end

end
