class AddRoleToStudentUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :student_users, :role, :string
  end
end
