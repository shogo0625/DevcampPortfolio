10.times do |blog|
  Blog.create!(
    title: "My Blog Post #{blog}",
    body: "It's been a while since I've reached out to you and I wanted to share something special that I've put together. One of the most top questions I get when I comes to building Ruby on Rails API applications that communicate with a React JS front end, is how to implement authentication. So I've put together a small course of 10 videos that walk through how to do that exact thing!",
  )
end

puts "10 blog posts created"

5.times do |skill|
  Skill.create!(
    title: "Rails #{skill}",
    percent_utilized: 15,
  )
end

puts "5 skills created"

9.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio title: #{portfolio_item}",
    subtitle: "My great service",
    body: "Thanks, this is awesome! Nowadays React JS is so popular on the front end, and there are even React on Rails tutorials and even Ruby gems for getting it all to work together.",
    main_image: "http://placehold.jp/600x400",
    thumb_image: "http://placehold.jp/350x200",
  )
end

puts "9 portfolio items created"
