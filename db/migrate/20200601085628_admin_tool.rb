class AdminTool < ActiveRecord::Migration[6.0]
  def change
  	create_table :admin_tools do |t|
  		t.boolean :round1, :default => false
  		t.boolean :round2, :default => false
  		t.boolean :round3, :default => false
  		t.boolean :round4, :default => false
  		t.boolean :round5, :default => false

  		t.timestamps
    end
  end
end
