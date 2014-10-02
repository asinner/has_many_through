class Course < ActiveRecord::Base
  has_many :enrollments
  has_many :students, -> { uniq }, through: :enrollments
end
