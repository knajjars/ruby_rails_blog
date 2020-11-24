3.times do |topic|
  Topic.create!(
      title: "Topic #{topic}"
  )
end

puts "Created 3 topics"

10.times do |blog|
  Blog.create!(
      title: "Blog #{blog}",
      body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu mi ut sem efficitur consectetur. Pellentesque vitae lectus diam. Praesent faucibus lacus diam, fringilla hendrerit ipsum tempus eget. Nunc non orci ut libero pharetra vehicula. Pellentesque in viverra nisl, non porttitor velit. Aliquam eget malesuada magna, eget venenatis tellus. Vivamus pretium, leo sed semper elementum, mauris erat venenatis eros, at commodo nulla orci ut nisi. Suspendisse mattis eros et metus commodo tristique. Sed id est magna. Sed sodales ac ex ut sodales. Quisque consequat vulputate massa, sed iaculis diam bibendum facilisis. In aliquam interdum magna, a placerat sem iaculis at. Phasellus rutrum eros nulla. Fusce sed feugiat metus.",
      topic: Topic.find(rand(1..3))
  )
end

puts "Created 10 blogs"

5.times do |skill|
  Skill.create!(
      title: "Skill #{skill}",
      percent_utilized: skill * 10
  )
end

puts "Created 5 skills"

9.times do |portfolio|
  Portfolio.create!(
      title: "Portfolio #{portfolio}",
      subtitle: "Subtitle #{portfolio}",
      body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu mi ut sem efficitur consectetur. Pellentesque vitae lectus diam. Praesent faucibus lacus diam, fringilla hendrerit ipsum tempus eget. Nunc non orci ut libero pharetra vehicula. Pellentesque in viverra nisl, non porttitor velit. Aliquam eget malesuada magna, eget venenatis tellus. Vivamus pretium, leo sed semper elementum, mauris erat venenatis eros, at commodo nulla orci ut nisi. Suspendisse mattis eros et metus commodo tristique. Sed id est magna. Sed sodales ac ex ut sodales. Quisque consequat vulputate massa, sed iaculis diam bibendum facilisis. In aliquam interdum magna, a placerat sem iaculis at. Phasellus rutrum eros nulla. Fusce sed feugiat metus.",
      main_image: "https://placehold.it/600x400",
      thumb_image: "https://placehold.it/350x200"
  )
end

puts "Created 9 portfolios"

3.times do |technology|
  Technology.create!(
      name: "Technology #{technology}",
      portfolio: Portfolio.find(rand(1..9))
  )
end

puts "Created 3 technologies"