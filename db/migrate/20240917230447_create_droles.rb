class CreateDroles < ActiveRecord::Migration[7.2]
  def change
    create_table :droles do |t|
      t.string :nom
      t.string :contenu
      t.string :auteur

      t.timestamps
    end
  end
end
