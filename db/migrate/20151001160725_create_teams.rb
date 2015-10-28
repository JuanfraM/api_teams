class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :nombre
      t.string :avatar
      t.string :year
      t.integer :campeonatos

      t.timestamps null: false
    end
  end
end
