class CreateTasksadmins < ActiveRecord::Migration
  def change
    create_table :tasksadmins do |t|
      t.string :admin_mail
      t.string :worker_mail
      t.text :task
      t.boolean :done

      t.timestamps
    end
  end
end
