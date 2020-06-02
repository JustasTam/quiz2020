class AddIpToTeamTable < ActiveRecord::Migration[6.0]
  def change
  	add_column :teams, :ip_adress, :string
  end
end
