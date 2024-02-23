
## manually creating Student model and Blog model
**Here the student has many blogs**
****
**So add column in blog migrate file for student_id and it have to be integer because the student id is integer**

.
.
..
t.integer :student_id

..

**and you Have to add in student and blog model classes the following**

## in Blog.rb
..
belons_to :student
...

## in Student.rb
..
..
has_many :blogs
...


## has_many Through association

=> create Worker Model  ``rails g model Worker name:string salary:decimal``

=> create Project Model ``rails g model Project name:string goal:string``

=>create model worker_project``rails g model worker_project worker:references project:references``

**Define Association between Worker and Project**

# Worker Model

`` has_many :worker_projects ``

``has_many :projects, through: :worker_projects``

# Project Model

``has_many :worker_projects``
``has_many :workers, through: :worker_projects``

# create migration file add_submission_date_to_student_projects


``rails g migration add_submission_date_to_student_projects submission_date:date``

**<font style="color:green"> Rails Smart enough to know i wanna add submission_date column to student_projects table </font>**

# run db:migrate

``rails db:migrate``
