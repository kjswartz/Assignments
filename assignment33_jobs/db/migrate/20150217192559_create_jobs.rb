class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :company
      t.string :location
      t.string :title
      t.text :description
      t.text :duties
      t.text :experience
      t.text :education
      t.date :posted

      t.timestamps null: false
    end
  end
end
