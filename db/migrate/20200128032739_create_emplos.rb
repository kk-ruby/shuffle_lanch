class CreateEmplos < ActiveRecord::Migration[6.0]
  def change
    create_table :emplos do |t|
      t.string :name
      t.string :section
      t.integer :last

      t.timestamps
    end
  end
end
