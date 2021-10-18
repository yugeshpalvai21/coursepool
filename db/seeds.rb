30.times do
  Course.create({
    title: FFaker::Book.title,
    description: FFaker::DizzleIpsum.paragraphs
  })
end
