class CreatePins < ActiveRecord::Migration[5.2]
  def change
    create_table :pins do |t|
      t.string :url #je crée la colonne avec l'url de l'image
      t.belongs_to :user
      t.timestamps
    end
  end
end
