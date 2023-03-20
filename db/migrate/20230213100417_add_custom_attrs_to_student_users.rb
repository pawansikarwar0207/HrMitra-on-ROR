class AddCustomAttrsToStudentUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :student_users, :first_name, :string
    add_column :student_users, :last_name, :string
    add_column :student_users, :contact_number, :string
    add_column :student_users, :address, :string
    add_column :student_users, :username, :string
  end
end
