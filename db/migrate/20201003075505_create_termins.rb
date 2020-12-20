class CreateTermins < ActiveRecord::Migration[6.0]
  def change
    create_table :termins do |t|
      t.string :title, :limit => 32, :null => false
      t.text :beschreibung
      t.date :datum
      t.integer :uhrzeit
      t.string :koch

      t.timestamps
    end
  end
end
