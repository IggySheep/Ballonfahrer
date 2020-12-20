class AddEmailUndPasswort < ActiveRecord::Migration[6.0]
  def change
  	   change_table :ballonfahrers do |t|
  	    t.string :email,:password, :password_digest
  end
end
end
