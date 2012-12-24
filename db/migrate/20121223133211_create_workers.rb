class CreateWorkers < ActiveRecord::Migration
  def change
    create_table :workers do |t|
      t.string :name
      t.text :task
      t.boolean :done

      t.timestamps
    end
  end
end
