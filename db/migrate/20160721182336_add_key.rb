class AddKey < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.string :key
    end 
  end
end
