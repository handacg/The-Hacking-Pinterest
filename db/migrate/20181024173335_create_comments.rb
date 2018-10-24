class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.text :content #colonne avec le contenu du commentaire
      t.belongs_to :user#qui dépend d'un user
      t.belongs_to :pin #et d'un pin
      t.timestamps
    end
  end
end
