class Pokemon

  attr_accessor :id, :name, :type, :db

  def initialize (id:, name:, type:, db:)
    @id = id
    @name = name
    @type = type
    @db = db

  end

  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)", name, type)
  end

  def self.find(id, db)
    output = db.execute("SELECT * FROM pokemon WHERE id = ?", id)
    newpoke = Pokemon.new(id: output[0][0], name: output[0][1], type: output[0][2], db: db)
    #puts "id: #{output[0][0]}, name: #{output[0][1]}, type: #{output[0][2]}, db: #{db}"
    #puts newpoke.id
    #newpoke
  end

end
