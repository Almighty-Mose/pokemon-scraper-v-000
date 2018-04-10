class Pokemon
  attr_accessor :id, :name, :type, :db
  
  @@all = []
  
  def initialize(name:, type:, db:, id:)
    @id = id
    @name = name
    @type = type
    @db = db
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)", name, type)
  end
  
  def self.find(id, db)
    self.save(db.execute("SELECT * FROM pokemon WHERE pokemon.id = ?", id))
  end
    
end
