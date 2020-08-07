class CreateOptions < ActiveRecord::Migration[6.0]
  def change
    create_table :options do |t|
      t.text :option_text
      t.integer :votes
      t.integer :voters, array: true, default: []
      t.timestamps
    end
  end
end
