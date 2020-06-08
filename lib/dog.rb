class Dog < ActiveRecord::Base

  attr_accessor :name, :breed

  def initialize(name, breed)
    @name = name
    @breed = breed
  end

  def self.create(attributes)
    attributes.each {|key, value| self.send(("#{key}="), value)}
  end

end
