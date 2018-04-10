class Pokemon
  attr_accessor :id, :name, :type, :db
  
  @@all = []
  
  def initialize(name:, type:, db:, id:, hp: nil)
    @hp = hp
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
    pokemon_data = db.execute("SELECT * FROM pokemon WHERE pokemon.id = ?", id).flatten
    Pokemon.new(id: pokemon_data[0], name: pokemon_data[1], type: pokemon_data[2], hp: pokemon_data[3], db: db)
  end
    
end
