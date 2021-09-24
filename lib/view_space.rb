require 'pg'
require 'pry'
class Space
 
  attr_reader :name, :description, :price_per_night, :available_from, :available_to
 
  def initialize(name:, description:, price_per_night:, available_from:, available_to:)
    @name = name
    @description = description
    @price_per_night = price_per_night
    @available_from = available_from
    @available_to = available_to
  end
 
  def self.all
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect( dbname: 'makersbnb_test' )
    else
      connection = PG.connect( dbname: 'makersbnb' )
    end
    
    result = connection.exec("SELECT * FROM space;")
    result.map { |row| Space.new(name: row['name'],
                description: row['description'],
                price_per_night: row['price_per_night'],
                available_from: row['available_from'],
                available_to: row['available_to']) }
  end
 
  def self.create(name:, description:, price_per_night:, available_from:, available_to:)
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect( dbname: 'makersbnb_test' )
    else
      connection = PG.connect( dbname: 'makersbnb' )
    end
   # binding.pry
    row = connection.exec_params("INSERT INTO space (name, description,
                                price_per_night, available_from, available_to) VALUES($1, $2, $3, $4, $5)
                                RETURNING name, description, price_per_night, available_from, available_to;",  
                                [name, description, price_per_night, available_from, available_to]).first
  
    Space.new(name: row['name'],
              description: row['description'],
              price_per_night: row['price_per_night'],
              available_from: row['available_from'],
              available_to: row['available_to'])
 
  end
 
end
