class CreateBallonfahrers < ActiveRecord::Migration[6.0]
  def change
    create_table :ballonfahrers do |t|
      t.string :name, :limit => 64, :null => false
      t.integer :tel
      t.date :geburtstag
      t.text :uebermich

      t.timestamps
    end
  end
end
