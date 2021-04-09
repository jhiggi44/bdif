class CreateCards < ActiveRecord::Migration[6.0]
  def change
    create_table :cards do |t|
      t.string :external_ref
      t.string :name

      t.timestamps
    end
  end
end
