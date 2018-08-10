class Pokemon

  attr_accessor :id, :name, :type, :db

  def initialize (id:, name:, type:, db:)

  end

  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)", name, type)
  end

  def self.find(id, db)
    output = db.execute("SELECT * FROM pokemon WHERE id = ?", id)
    newpoke = Pokemon.new(id: output[0], name: output[1], type: output[2], db: db)
    puts newpoke
  end

end
