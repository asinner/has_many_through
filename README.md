# README
## Approach
1. Create a new course
2. Go to the course index path
3. Click on the show page for that course
4. See any students that are enrolled
5. Click on 'Enroll a new student' to enroll a student
6. Select a student to enroll (Go to new student path to create a student if not done)
7. Select student and hit 'Enroll student'
8. This enrolls the student if not already student
9. Click on the student page to see all courses he/she is enrolled in
10. Enjoy

This app utilizes a has_many through table where students are connected to courses through enrollments. 
The 'enrollments' join table has additional information that can be stored for the enrollment. Simply add a note when adding a student to keep information about that enrollment.