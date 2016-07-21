class CreateNewspapers < ActiveRecord::Migration
  def change
    create_table :newspapers do |t|
      t.string :publication
      t.string :main_phone
      t.string :publisher
      t.string :publisher_email
      t.string :editor
      t.string :editor_email
      t.string :sales_manager
      t.string :sales_manager_email
      t.string :website
      t.string :twitter
      t.string :facebook
      t.string :ownership
      t.string :publication_day
      t.string :ad_deadline
      t.string :electoral_district

      t.timestamps null: false
    end
  end
end
