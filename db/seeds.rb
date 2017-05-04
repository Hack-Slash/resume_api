
# 10.times do

#   Student.create(
#   first_name: Faker::Name.first_name,
#   last_name: Faker::Name.last_name,
#   email: Faker::Internet.email,
#   phone_number: Faker::Number.number(10),
#   short_bio: Faker::Hipster.paragraph,
#   linkedin_url: "https://www.linkedin.com/in/brian-rice-95a672100/",
#   twitter_handle: "https://twitter.com/KennyKparekh04",
#   personal_web_url: "http://www.1happybirthday.com/HappyBirthday/Brian",
#   online_resume_url: "https://resumegenius.com/resume-templates",
#   github_url: "https://github.com/Hack-Slash",
#   photo: "http://www.warrenphotographic.co.uk/photography/cats/41427.jpg"
# )

# end

# Student.all.each do |student|
#   Experience.create(
#     student_id: student.id,
#     start_date: Faker::Date.between(2.days.ago, Date.today),
#     end_date: "CURRENT",
#     job_title: Faker::Job.title,
#     company_name: Faker::Company.name,
#     details: Faker::Company.bs,
#   )
# end

Student.all.each do |student|
  Educations.create(
    student_id: student.id,
    )
