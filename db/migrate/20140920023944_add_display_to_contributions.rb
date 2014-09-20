class AddDisplayToContributions < ActiveRecord::Migration
  def change
    add_column :contributions, :display, :boolean, :default => true
  end
end
