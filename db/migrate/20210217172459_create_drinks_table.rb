class CreateDrinksTable < ActiveRecord::Migration[6.0]
  def change
    create_table :drinks do |t|
      t.string :name
      t.string :spirit
      t.string :ingredients
      t.string :keywords 
    end
  end
end
