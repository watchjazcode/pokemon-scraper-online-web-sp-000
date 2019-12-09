class Pokemon

  attr_accessor :id, :name, :type, :db

  def initialize(id:, name:, type:, db:)
    @id = id
    @name = name
    @type = type
    @db = db
  end

  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)", name, type) #pulling from initialize
    return self
  end

  def self.find_by_id(id)
    dog_data = DB[:conn].execute("SELECT * FROM dogs WHERE id = ?", id) #fill in question mark with what comes after, in this case id
    new_from_db(dog_data[0])
  end

end
