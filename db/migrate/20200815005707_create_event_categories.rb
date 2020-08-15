class CreateEventCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :event_categories do |t|
      t.integer :event_id
      t.integer :categorie_id

      t.timestamps
    end
  end
end
