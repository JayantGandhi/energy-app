# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Article.delete_all
Article.create(vertical: 'Phrenology', title: 'When I Was a young warthog', subtitle: 'when he was a young warthog', image_url: 'http://vignette1.wikia.nocookie.net/thelionkingfanon/images/f/fe/BabyWarthog.jpg/revision/latest?cb=20130701084732' )
Article.create(vertical: 'Phrenology', title: 'Camelot!', subtitle: 'Tis a silly place', image_url: 'http://schools.yrdsb.ca/markville.ss/projects/classof2007/16chong/spears/CAMELOT.jpg')
Article.create(vertical: 'Phrenology', title: 'Did I do that?', subtitle: 'Yes, yes I did', image_url: 'http://www.technologytell.com/entertainment/files/2012/10/urkel.jpg')
Article.create(vertical: 'Phrenology', title: 'To Bodly Go', subtitle: 'Woah there split infinitive!', image_url: 'http://p1cdn01.thewrap.com/images/2014/10/Shatner.jpeg')
Article.create(vertical: 'Phrenology', title: 'Can Poland Into Space?', subtitle: 'Kurwa', image_url: 'http://th01.deviantart.net/fs70/PRE/f/2013/271/2/5/kurwa_by_jarzmcpicklez-d6obi7v.png')
Article.create(vertical: 'Astacology', title: 'Bill and Ted\'s Adventure into Depression!', subtitle: 'Staring Woody Harrelson as Uncle Pete', image_url: 'http://www.twentysixdollars.com/wordpress/wp-content/uploads/2013/09/Sad-Keanu.jpg')
Article.create(vertical: 'Astacology', title: 'Has Donny Found his element yet?', subtitle: 'The world may never know...', image_url: 'http://i.imgur.com/VuVxuB8.jpg')
Article.create(vertical: 'Astacology', title: 'Trix Rabbit Finaly has Trix:', subtitle: '"It\'s Alright..."', image_url: 'https://kookyquestions.files.wordpress.com/2011/03/trix.jpg')
Article.create(vertical: 'Astacology', title: 'Is your refrigerator running?', subtitle: 'if so you should probably go catch it', image_url: 'http://cw15.com//news/features/local-news/images/local_news_stopimg.jpg')
Article.create(vertical: 'Astacology', title: 'I hope sempai notices me', subtitle: 'Baka', image_url: 'http://www.nerdfit.com/wp-content/uploads/2014/08/xHzNQi3.jpg')
