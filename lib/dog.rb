class Dog < ActiveRecord::Base

  attr_accessor :name, :breed

  def initialize(name, breed)
    @name = name
    @breed = breed
  end

  # self.create
  
end
