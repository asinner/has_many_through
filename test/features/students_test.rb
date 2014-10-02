require 'test_helper'

feature 'Students' do
  scenario 'they can be enrolled' do
    visit course_path(courses(:ruby))
    page.text.wont_include(students(:andrew).name)
    click_on 'Enroll a new student'
    select students(:andrew).name
    click_on 'Enroll student'
    page.text.must_include 'Student successfully added'
    page.text.must_include students(:andrew).name
  end

  scenario 'they can only be enrolled in a class once' do
    visit course_path(courses(:ruby))
    click_on 'Enroll a new student'
    select students(:john).name
    click_on 'Enroll student'
    page.text.must_include 'Student already enrolled'
  end
end
