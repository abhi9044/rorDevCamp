10.times do |x|
	Blog.create!(
       title:"My blog post #{x}",
       body:"djfbdjfbjdfbjdbfjdbfjdbfjdbfjdfjbf"
	)
end

puts "10 blogs created"

5.times do |y|
	Skill.create!(
  title:"My Skills #{y}",
	percent_utilized:15
	)
end

puts "5 skills created"

9.times do |z|

Portfolio.create!(
	title:"My Skills #{z}",
	subtitle:"My Sub #{z}",
	body:"dfdfdfdfdfdfdfdfd",
	main_image:"http://via.placeholder.com/350x150",
	thumb_image:"http://via.placeholder.com/150x150"
		)
	end

puts "9 portolios created created"


