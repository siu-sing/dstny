class ChangeVotesColumnOnOptions < ActiveRecord::Migration[6.0]
  def change
    change_column_default :options, :votes, 0
  end
end
