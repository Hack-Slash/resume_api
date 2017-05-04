class RemoveStudentIdFromSkills < ActiveRecord::Migration[5.0]
  def change
    remove_column :skills, :student_id, :integer
  end
end
