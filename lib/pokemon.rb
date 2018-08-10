class Pokemon

  attr_accessor :id, :name, :type, :db

  def initialize (id:, name:, type:, db:)

  end

  def self.save

  database_connection.execute("INSERT INTO pokemon (id, name, type) VALUES (?, ?, ?)", @id, @name, @type)

  end


end
