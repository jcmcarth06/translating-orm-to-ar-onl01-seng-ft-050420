class Dog < ActiveRecord::Base

  attr_accessor :name, :breed

  def initialize(name, breed)
    @name = name
    @breed = breed
  end

  def self.create(attributes)
    attributes.each {|key, value| self.send(("#{key}="), value)}
  end

  def self.find_by(attribute)
      column_name = attribute.keys[0].to_s
      value_name = attribute.values[0]

      sql = <<-SQL
        SELECT * FROM #{table_name}
        WHERE #{column_name} = ?
        SQL

      DB[:conn].execute(sql, value_name);
    end
end
