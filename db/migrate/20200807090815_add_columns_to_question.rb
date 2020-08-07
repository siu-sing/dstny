class AddColumnsToQuestion < ActiveRecord::Migration[6.0]
  def change
    add_column :questions, :expiry_date, :datetime
  end
end
