class Student < ActiveRecord::Base
  has_many :enrollments
  has_many :courses, -> { uniq }, through: :enrollments

  def name
    "#{first_name} #{last_name}"
  end
end
