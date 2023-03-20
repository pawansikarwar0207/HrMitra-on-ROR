class CreateTrainees < ActiveRecord::Migration[7.0]
  def change
    create_table :trainees do |t|
      t.string :name
      t.string :email
      t.string :address
      t.string :contact_number
      t.string :college_name
      t.string :course_name

      t.timestamps
    end
  end
end
