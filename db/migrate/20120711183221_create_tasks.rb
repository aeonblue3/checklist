class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.text :desc
      t.datetime :due, default: '0000-00-00 00:00:00', null: false
      t.boolean :done, default: false

      t.timestamps
    end
  end
end
