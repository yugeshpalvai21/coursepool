3.times do |n|
  User.create({
    email: "yugeshpalvai#{n}@coursepool.com", 
    password: '123456', 
    password_confirmation: '123456'
  })
end


30.times do
  Course.create({
    title: FFaker::Book.title,
    description: FFaker::DizzleIpsum.paragraphs,
    user_id: rand(1..3)
  })
end
