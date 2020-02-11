class AddKnext < ActiveRecord::Migration[6.0]
  def change
    add_column :emplos, :k_next, :integer
    add_column :emplos, :k_last, :integer
  end
end
