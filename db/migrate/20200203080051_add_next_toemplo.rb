class AddNextToemplo < ActiveRecord::Migration[6.0]
  def change
    add_column :emplos, :next, :integer
  end
end
