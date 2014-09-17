class CreateContributions < ActiveRecord::Migration
  def change
    create_table :contributions do |t|
      t.string :name
      t.decimal :amount
      t.string :message

      t.timestamps
    end
  end
end
