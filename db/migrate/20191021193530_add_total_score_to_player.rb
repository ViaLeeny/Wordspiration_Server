class AddTotalScoreToPlayer < ActiveRecord::Migration[5.2]
  def change
    add_column :players, :total_score, :integer
  end
end
