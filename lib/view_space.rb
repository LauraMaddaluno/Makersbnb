require 'pg'

class Space 

  attr_reader :name

  def initialize(name:) 
    @name = name
  end 

  def self.all
    connection = PG.connect :dbname => 'Makersbnb'
    result = connection.exec("SELECT * FROM space;")
    result.map { |row| Space.new(name: row['name']) }
  end 

end 
