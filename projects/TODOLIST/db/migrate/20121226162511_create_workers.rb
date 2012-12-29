class CreateWorkers < ActiveRecord::Migration
  def change
    create_table :workers do |t|
      t.string :email
      t.string :full_name
      t.boolean :is_worker

      t.timestamps
    end
  end
end
