class Newspaper < ActiveRecord::Base
  require 'csv'

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Newspaper.create! row.to_hash
    end
  end
end
