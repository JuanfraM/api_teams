class AddCantidadSeguidoresToTeams < ActiveRecord::Migration
  def change
    add_column :teams, :cant_seguidores, :integer
  end
end
