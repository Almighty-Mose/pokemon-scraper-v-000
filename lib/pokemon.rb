class Pokemon
  
  @@all = []
  
  def initialize(name:, type:, db:, id:)
    @name = name
    @type = type
    @db = db
    @id = id
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def
    
end
