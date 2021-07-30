class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.belongs_to :user
      t.belongs_to :schedule

      t.string :title
      t.text :body
      t.integer :category
      t.datetime :deadline

      t.timestamps
    end
  end
end
