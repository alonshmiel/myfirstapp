class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.boolean :done
      t.references :worker

      t.timestamps
    end
    add_index :tasks, :worker_id
  end
end
