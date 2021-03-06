puts "Deleting..."
Review.destroy_all
Message.destroy_all
Conversation.destroy_all
OrderItem.destroy_all
Order.destroy_all
Service.destroy_all
User.destroy_all

# Users
puts "Creating Users..."

client1 = User.create(
  first_name: 'Isabelle',
  last_name: 'Vallerand',
  email: 'client1@gmail.com',
  password: '123456'
)
client1_file = URI.open('https://res.cloudinary.com/dq1xs22hk/image/upload/v1645738596/profile/isabelle.jpg')
client1.photo.attach(io: client1_file, filename: 'isabelle.jpg', content_type: 'image/jpg')
puts client1.first_name

client2 = User.create(
  first_name: 'Cameron',
  last_name: 'Woolf',
  email: 'client2@gmail.com',
  password: '123456'
)
client2_file = URI.open('https://res.cloudinary.com/dq1xs22hk/image/upload/v1645738592/profile/cameron.jpg')
client2.photo.attach(io: client2_file, filename: 'cameron.jpg', content_type: 'image/jpg')
puts client2.first_name

client3 = User.create(
  first_name: 'Julie',
  last_name: 'Fa',
  email: 'client3@gmail.com',
  password: '123456'
)
client3_file = URI.open('https://res.cloudinary.com/dq1xs22hk/image/upload/v1646925354/profile/julie.jpg')
client3.photo.attach(io: client3_file, filename: 'julie.jpg', content_type: 'image/jpg')
puts client3.first_name

client4 = User.create(
  first_name: 'Claudia',
  last_name: 'Cesar',
  email: 'client4@gmail.com',
  password: '123456'
)
client4_file = URI.open('https://res.cloudinary.com/dq1xs22hk/image/upload/v1646925350/profile/claudia.jpg')
client4.photo.attach(io: client4_file, filename: 'claudia.jpg', content_type: 'image/jpg')
puts client4.first_name

seam1 = User.create(
  first_name: 'Rey',
  last_name: 'Kawakubo',
  bio: "I studied fashion design in Tokyo then I move to Montreal.
        Then I started to make wedding dresses and specialized in it.
        I put all of my efforts in the details and hopefully I can make YOUR wedding dress.",
  address: "25 Av. Fairmount Ouest Montreal QC H2T 2L9",
  email: 'seam1@gmail.com',
  password: '123456',
  seamstress: true
)
seam1_file = URI.open('https://res.cloudinary.com/dq1xs22hk/image/upload/v1645853245/seamstresses/rey.jpg')
seam1.photo.attach(io: seam1_file, filename: 'rey.jpg', content_type: 'image/jpg')
puts seam1.first_name

seam2 = User.create(
  first_name: 'Giuseppe',
  last_name: 'Paccini',
  bio: "I started working with my father in Little Italy and
        we had a lot of customers, I decided to keep the business in the family and
        to this day at 82 years old, I still fix and make suits and wedding dresses for the elite.",
  address: "206 Rue Bernard Ouest Montreal QC H2T 2K4",
  email: 'seam2@gmail.com',
  password: '123456',
  seamstress: true
)
seam2_file = URI.open('https://res.cloudinary.com/dq1xs22hk/image/upload/v1645846668/seamstresses/giuseppe.jpg')
seam2.photo.attach(io: seam2_file, filename: 'giuseppe.jpg', content_type: 'image/jpg')
puts seam2.first_name

seam3 = User.create(
  first_name: 'Andrea',
  last_name: 'Smith',
  bio: "I've studied Fashion Design in my early twenties
        and noticed right away how learning to sew has became helpful to me and others.
        I've worked for Gucci then decided to retire early and help my community instead.
        I offer high quality repairs at a reasonable price.",
  address: "4524 Boul. Saint-Laurent Montreal QC H2T 1R4",
  email: 'seam3@gmail.com',
  password: '123456',
  seamstress: true
)
seam3_file = URI.open('https://res.cloudinary.com/dq1xs22hk/image/upload/v1645852094/seamstresses/andrea.jpg')
seam3.photo.attach(io: seam3_file, filename: 'andrea.jpg', content_type: 'image/jpg')
puts seam3.first_name

seam4 = User.create(
  first_name: 'Yolanda',
  last_name: 'Fado',
  bio: "I am from Portugal and came here to work in the fashion industry, I specialize in leather and
        suede alterations as my mother was a shoe maker back in Portugal.
        For me, fixing leather and suede is a second nature.",
  address: "7700 Boulevard Decarie Montreal QC H4P 2H4",
  email: 'seam4@gmail.com',
  password: '123456',
  seamstress: true
)
seam4_file = URI.open('https://res.cloudinary.com/dq1xs22hk/image/upload/v1645846471/seamstresses/yolanda.jpg')
seam4.photo.attach(io: seam4_file, filename: 'yolanda.jpg', content_type: 'image/jpg')
puts seam4.first_name

seam5 = User.create(
  first_name: 'Jenny',
  last_name: 'Sun',
  bio: "I am a stylist for celebrities but I also like to repair clothes
  because I want to help people keeping their emotional value piece of clothing.",
  address: "4631 Boul. Saint-Laurent Montreal QC H2T 1R2",
  email: 'seam5@gmail.com',
  password: '123456',
  seamstress: true
)
seam5_file = URI.open('https://res.cloudinary.com/dq1xs22hk/image/upload/v1645853113/seamstresses/jenny.jpg')
seam5.photo.attach(io: seam5_file, filename: 'jenny.jpg', content_type: 'image/jpg')
puts seam5.first_name

seam6 = User.create(
  first_name: 'Aldo',
  last_name: 'Amato',
  bio: "I use to make three-piece suits for important businessmen,
  now that I'm retired, I only alter or repair three-piece suits.",
  address: "378 Av. Victoria Westmount QC H3Z 2N4",
  email: 'seam6@gmail.com',
  password: '123456',
  seamstress: true
)
seam6_file = URI.open('https://res.cloudinary.com/dq1xs22hk/image/upload/v1645854121/seamstresses/aldo.jpg')
seam6.photo.attach(io: seam6_file, filename: 'aldo.jpg', content_type: 'image/jpg')
puts seam6.first_name

seam7 = User.create(
  first_name: 'Joe',
  last_name: 'Miller',
  bio: "I come from a family that made aprons for butchers and blacksmiths, I specialize in leather and mesh.",
  address: "11885 Blvd. Laurentien Montreal QC H4J 2R5",
  email: 'seam7@gmail.com',
  password: '123456',
  seamstress: true
)
seam7_file = URI.open('https://res.cloudinary.com/dq1xs22hk/image/upload/v1645853994/seamstresses/joe.jpg')
seam7.photo.attach(io: seam7_file, filename: 'joe.jpg', content_type: 'image/jpg')
puts seam7.first_name

seam8 = User.create(
  first_name: 'Erin',
  last_name: 'McCall',
  bio: "I have a theater producer background,
  therefore I am making costumes for plays now but I can fix anything on any type of garment.",
  address: "1701 Rue Saint-Denis Montreal QC H2X 3K4",
  email: 'seam8@gmail.com',
  password: '123456',
  seamstress: true
)
seam8_file = URI.open('https://res.cloudinary.com/dq1xs22hk/image/upload/v1645855389/seamstresses/erin.jpg')
seam8.photo.attach(io: seam8_file, filename: 'erin.jpg', content_type: 'image/jpg')
puts seam8.first_name

# Services
puts "Creating Services..."

materials = ['Lace', 'Suede', 'Crepe', 'Satin']
clothings = ['Wedding Dress', 'Suit', 'Dress', 'Skirt']
repairs = ['Fitting', 'Button', 'Zipper']

# Rey's services
service1 = Service.new(
  name: "#{materials[0]} #{clothings[0]} - #{repairs[0]} (200.00$)",
  clothing: clothings[0],
  repair: repairs[0],
  material: materials[0],
  description: "Doing drop off need to take about 30mins",
  price: 200,
  estimated_time: 3
)
service1.seamstress = seam1
service1.save
puts service1.name

service2 = Service.new(
  name: "#{materials[3]} #{clothings[0]} - #{repairs[0]} (150.00$)",
  clothing: clothings[0],
  repair: repairs[0],
  material: materials[3],
  description: "Doing drop off need to take about 30mins",
  price: 150,
  estimated_time: 2
)
service2.seamstress = seam1
service2.save
puts service2.name

service9 = Service.new(
  name: "#{materials[2]} #{clothings[0]} - #{repairs[0]} (175.00$)",
  clothing: clothings[0],
  repair: repairs[0],
  material: materials[2],
  description: "Doing drop off need to take about 30mins",
  price: 175,
  estimated_time: 2
)
service9.seamstress = seam1
service9.save
puts service9.name

service3 = Service.new(
  name: "#{materials[0]} #{clothings[0]} - #{repairs[1]} (20.00$)",
  clothing: clothings[0],
  repair: repairs[1],
  material: materials[0],
  description: "5 buttons maximum",
  price: 20,
  estimated_time: 1
)

service3.seamstress = seam1
service3.save
puts service3.name

service10 = Service.new(
  name: "#{materials[3]} #{clothings[0]} - #{repairs[1]} (20.00$)",
  clothing: clothings[0],
  repair: repairs[1],
  material: materials[3],
  description: "5 buttons maximum",
  price: 20,
  estimated_time: 1
)

service10.seamstress = seam1
service10.save
puts service10.name

service11 = Service.new(
  name: "#{materials[2]} #{clothings[0]} - #{repairs[1]} (20.00$)",
  clothing: clothings[0],
  repair: repairs[1],
  material: materials[2],
  description: "5 buttons maximum",
  price: 20,
  estimated_time: 1
)

service11.seamstress = seam1
service11.save
puts service11.name

# Giuseppe Services
service7 = Service.new(
  name: "#{materials[0]} #{clothings[0]} - #{repairs[0]} (500.00$)",
  clothing: clothings[0],
  repair: repairs[0],
  material: materials[0],
  description: "Doing drop off need to take about 30mins",
  price: 500,
  estimated_time: 3
)

service7.seamstress = seam2
service7.save
puts service7.name

service6 = Service.new(
  name: "#{materials[1]} #{clothings[1]} - #{repairs[0]} (250.00$)",
  material: materials[1],
  clothing: clothings[1],
  repair: repairs[0],
  description: "Suit fitting for men",
  price: 250,
  estimated_time: 3
)

service6.seamstress = seam2
service6.save
puts service6.name

service4 = Service.new(
  name: "#{materials[0]} #{clothings[0]} - #{repairs[1]} (30.00$)",
  clothing: clothings[0],
  repair: repairs[1],
  material: materials[0],
  description: "5 buttons maximum",
  price: 30,
  estimated_time: 1
)
service4.seamstress = seam2
service4.save
puts service4.name

# Other services

service5 = Service.new(
  name: "#{materials[0]} #{clothings[0]} - #{repairs[0]} (300.00$)",
  clothing: clothings[0],
  repair: repairs[0],
  material: materials[0],
  description: "Doing drop off need to take about 40mins",
  price: 300,
  estimated_time: 4
)
service5.seamstress = seam3
service5.save
puts service5.name

service8 = Service.new(
  name: "#{materials[0]} #{clothings[0]} - #{repairs[0]} (300.00$)",
  clothing: clothings[0],
  repair: repairs[0],
  material: materials[0],
  description: "Doing drop off need to take about 40mins",
  price: 300,
  estimated_time: 4
)
service8.seamstress = seam5
service8.save
puts service8.name

# Orders
puts "Creating Orders..."

order1 = Order.new
order1.client = client2
order1.seamstress = seam1
order1.save

order2 = Order.new
order2.client = client2
order2.seamstress = seam2
order2.drop_time = DateTime.now
order2.confirmed = true
order2.save

order3 = Order.new
order3.client = client2
order3.seamstress = seam1
order3.save

order4 = Order.new
order4.client = client2
order4.seamstress = seam3
order4.drop_time = DateTime.now
order4.confirmed = true
order4.save

# Order Item
order_item1 = OrderItem.new
order_item1.service = service1
order_item1.order = order1
order_item1.save

order_item2 = OrderItem.new
order_item2.service = service6
order_item2.order = order2
order_item2.save

order_item3 = OrderItem.new
order_item3.service = service3
order_item3.order = order3
order_item3.save

order_item4 = OrderItem.new
order_item4.service = service5
order_item4.order = order4
order_item4.save

# Reviews Seed

# Reviews for Rey
review1 = Review.new(content: "Thanks Rey! You are a lifesaver. She is so friendly and sweet.
  She has such magical hands that will transform your dress.", rating: 5)
review1.service = service1.name
review1.seamstress = seam1
review1.client = client4
review1.save

review2 = Review.new(content: "Amazing! The service was fast and affordable.
  My wedding dress looks brand new and beautiful.", rating: 5)
review2.service = service2.name
review2.seamstress = seam1
review2.client = client3
review2.save

# Reviews for Giuseppe

review3 = Review.new(content: "I was able to save my ten thousand dollar suit
  that I have bought 5 years ago. Thank you Giuseppe!", rating: 5)
review3.service = service6.name
review3.seamstress = seam2
review3.client = client2
review3.save

review4 = Review.new(content: "Giuseppe did a fantastic job, but I wish it was a little cheaper.", rating: 4)
review4.service = service7.name
review4.seamstress = seam2
review4.client = client3
review4.save

review5 = Review.new(content: "It was a quick fix.", rating: 4)
review5.service = service4.name
review5.seamstress = seam2
review5.client = client4
review5.save
