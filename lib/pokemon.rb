class Pokemon

  attr_accessor :id, :name, :type, :db, :hp

  def initialize(id:, name:, type:, db:, hp:)
    self.id = id
    self.name = name
    self.type = type
    self.db = db
    self.hp = hp
  end

  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?,?)", name, type)
  end

  def self.find(id, db)
    new_pokemon = db.execute("SELECT * FROM pokemon WHERE id = ?", id).flatten
    return self.new(id: new_pokemon[0], name: new_pokemon[1], type: new_pokemon[2], db: db)
  end

  def self.alter_hp(db, hp)
    db.execute("UPDATE pokemon SET hp = ? WHERE id = ?", hp, id)
  end

end
