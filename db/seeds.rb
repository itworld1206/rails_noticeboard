# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Post.create(title: 'hello world!', content: 'first content!')
# Reply.create(content: 'first reply!', post_id: 1)

# new_post = Post.new
# new_post.title = 'hello world!'
# new_post.content = 'Working?'
# new_post.save

reply = Reply.new
reply.content = "First reply!"
reply.post = new_post # rails의 아트!
reply.save
