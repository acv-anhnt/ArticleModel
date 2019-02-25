# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Article.destroy_all
Text.destroy_all
Image.destroy_all
ActiveRecord::Base.connection.execute(
'UPDATE SQLITE_SEQUENCE SET seq = 0 WHERE name = \'articles\''
)

ActiveRecord::Base.connection.execute(
'UPDATE SQLITE_SEQUENCE SET seq = 0 WHERE name = \'texts\''
)

ActiveRecord::Base.connection.execute(
'UPDATE SQLITE_SEQUENCE SET seq = 0 WHERE name = \'images\''
)

article1 = Article.create(title: 'Hot news', like: 0)
ap article1
text = Text.create(headline: 'Super hot news', position: 1, like: 1000, paragraph: 'This is a mega hot news', article: article1)
text2 = Text.create(headline: 'Super cool news', position:3, like: 10, paragraph: 'This is a mega cool news',
  article: article1)
image = Image.create(headline: 'Anh minh hoa', position:1, like: 20, url: 'http://anhMinhHoa.com', article: article1)
image2 = Image.create(headline: 'Anh minh hoa2', position:3, like: 20, url: 'http://anhMinhHoa.com', article: article1)
image3 = Image.create(headline: 'Anh minh hoa3', position:2, like: 20, url: 'http://anhMinhHoa.com', article: article1)
article1.post_at = '2019-02-24 16:13:50'

ap article1.images

