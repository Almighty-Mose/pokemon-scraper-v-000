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
  
    
end
