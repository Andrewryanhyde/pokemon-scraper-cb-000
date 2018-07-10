class Pokemon

  attr_accessor :id, :name, :type, :db

  def initialize(id:, name:, type:, db:)
    self.id = name
    self.type = type
    self.db = db
  end

  def self.save
    db.execute("INSERT INTO pokemon (name, text) VALUES (?,?)", name, type)
  end

end
