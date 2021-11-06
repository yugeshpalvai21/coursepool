3.times do |n|
  User.create({
    email: "yugeshpalvai#{n}@coursepool.com", 
    password: '123456', 
    password_confirmation: '123456',
    confirmed_at: Time.now
  })
end


30.times do
  Course.create({
    title: FFaker::Book.title,
    description: FFaker::DizzleIpsum.paragraphs,
    short_description: FFaker::Book.title,
    price: rand(0..99),
    level: ["beginner", "intermediate", "advanced"].sample,
    language: ["english", "other"].sample,
    user_id: rand(1..3)
  })
end
