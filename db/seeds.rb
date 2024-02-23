# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# 30.times do |i|
#   Article.create(
#     title: Faker::ProgrammingLanguage.name,
#     context: Faker::Military.space_force_rank
#     )
# end

# 10.times do |i|
#   puts "created Student #{i}"
#   Student.create(
#     name:Faker::Name.name,
#     level:Faker::Educator.degree
#     )
# end


# Student.all.each do |student|
#   student.blogs.create(
#     title:Faker::Book.title,
#     content:Faker::Quote.matz
#     )

#   student.blogs.create(
#     title:Faker::Book.title,
#     content:Faker::Quote.matz
#     )
# end

10.times do |i|
  if i%2 == 0
    Learner.create(name:Faker::Name.name,language:"عربية")
  else
    Learner.create(name: Faker::Name.name,language:"English")
  end

  puts "created Learner Number #{i}"
end

10.times do |i|
  Course.create(
    title:Faker::Educator.course_name,
    description:Faker::Lorem.sentence,
    video_url: Faker::TvShows::Friends.quote
    )
end
