class Student < ApplicationRecord

  has_many :experiences
  has_many :educations
  has_many :capstones
  has_many :student_skills
  has_many :skills, through: :student_skills
end
