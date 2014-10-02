class AddNoteToEnrollments < ActiveRecord::Migration
  def change
    add_column :enrollments, :note, :string
  end
end
