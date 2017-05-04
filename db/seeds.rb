
10.times do

  Student.create(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  phone_number: Faker::Number.number(10),
  short_bio: Faker::Hipster.paragraph,
  linkedin_url: "https://www.linkedin.com/in/brian-rice-95a672100/",
  twitter_handle: "https://twitter.com/KennyKparekh04",
  personal_web_url: "http://www.1happybirthday.com/HappyBirthday/Brian",
  online_resume_url: "https://resumegenius.com/resume-templates",
  github_url: "https://github.com/Hack-Slash",
  photo: "http://www.warrenphotographic.co.uk/photography/cats/41427.jpg"
)

end

Student.all.each do |student|
  Experience.create(
    student_id: student.id,
    start_date: Faker::Date.between(2.days.ago, Date.today),
    end_date: "CURRENT",
    job_title: Faker::Job.title,
    company_name: Faker::Company.name,
    details: Faker::Company.bs,
  )
end

Student.all.each do |student|
  Education.create(
    student_id: student.id,
    start_date: Faker::Date.between(5000.days.ago, Date.today),
    end_date: Faker::Date.between(4000.days.ago, Date.today),
    degree: Faker::Educator.course,
    university: Faker::Educator.university,
    details: Faker::Company.catch_phrase
  )
end

Student.all.each do |student|
  Capstone.create(
    student_id: student.id,
    name: Faker::Superhero.name,
    description: Faker::Hipster.paragraph(2, true),
    url: Faker::Internet.url,
    screenshot: 'https://cdn.weasyl.com/static/media/42/e3/5d/42e35d65d75564e3af26b417b3f04272459216d62a1fa108f2713df54ab9aff1.png'
  )
end

100.times do
  Skill.create(
    skill_name: Faker::Superhero.power,
    student_id: Student.all.sample.id
  )
end
