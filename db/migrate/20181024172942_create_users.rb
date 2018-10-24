class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name #je crée juste la colonne name pour les users
      t.timestamps
    end
  end
end
