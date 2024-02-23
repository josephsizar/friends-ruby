
## manually creating Student model and Blog model
**Here the student has many blogs**
****
**So add column in blog migrate file for student_id and it have to be integer because the student id is integer**

.
.
.
..
..
..
t.integer :student_id
...
..

**and you Have to add in student and blog model classes the following**

## in Blog.rb
..
..
belons_to :student
...

## in Student.rb
..
..
has_many :blogs
...