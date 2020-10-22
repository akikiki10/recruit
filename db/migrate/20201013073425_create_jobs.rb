class CreateJobs < ActiveRecord::Migration[6.0]
  def change
    create_table :jobs do |t|
      t.string :name, null: false
      t.string :salary, null: false
      t.string :working_hours, null: false
      t.string :place, null: false
      t.string :feature
      t.text :catch, null: false

      t.timestamps
    end
  end
end
