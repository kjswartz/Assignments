class CreateApplicants < ActiveRecord::Migration
  def change
    create_table :applicants do |t|
      t.references :job, index: true
      t.string :name
      t.integer :age

      t.timestamps null: false
    end
    add_foreign_key :applicants, :jobs
  end
end
