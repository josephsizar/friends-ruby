
  There is Multiple Courses can educated by multiple learners
  and
  There is Multiple Learners can Educat multiple Courses

## 🔰 creating Leaner Model and Course Model

**🔅 add the following code to both models**

in Learner model

``💻 has_and_belongs_to_many :courses ``

****
in Course Model

`` 💻 has_and_belongs_to_many :learners ``

## 🔰 creating joint table

`` 💻 rails g migration create_learners_courses_join_table ``

**🔅 add to the created Table the following code**

``💻 create_joint_table :courses , :learners ``

**🔅 Here You Can Run The Migrations**

``💻 rails db:migrate ``

**🔅 Create Courses and Learners**

## 🔰 Example

``💻 leaner1 = Learner.first``

``💻 course1 = Course.first``

``💻 learner1.courses << course1``

if you get two courses
   course2 and course3

``💻 leaner1.courses << course2 << course3 ``