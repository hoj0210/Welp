# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Business.destroy_all

demo_user = User.create!(
    fname: "Demo",
    lname: "User",
    email: "demouser@email.com",
    zip_code: 90210,
    password: "demouser"    
)

business1 = Business.create!(
    name: "Tacos El Gordo",
    address: "315 Cascade Way",
    city: "Cypress",
    state: "CA",
    b_zip_code: 90630,
    phone_num: "213-887-9090",
    price_range: "$",
    longitude: 64.543211,
    latitude: 56.43222
)
business1.photos.attach(io: File.open('/Users/hojungcha/Desktop/business_pics/taco_maggies/taco2.png'), filename: "taco2.png")

business2 = Business.create!(
    name: "I Heart Sushi",
    address: "3 Bright Way",
    city: "Cypress",
    state: "CA",
    b_zip_code: 90630,
    phone_num: "714-999-9090",
    price_range: "$",
    longitude: 60.2113,
    latitude: 51.4555
)
business2.photos.attach(io: File.open('/Users/hojungcha/Desktop/business_pics/i_heart_sushi/sushi1.jpg'), filename: "sushi1.jpg")

business3 = Business.create!(
    name: "JongRo",
    address: "123 Comb Lane",
    city: "Artesia",
    state: "CA",
    b_zip_code: 90701,
    phone_num: "714-111-1111",
    price_range: "$$",
    longitude: 80.2113,
    latitude: 49.1234
)

business3.photos.attach(io: File.open('/Users/hojungcha/Desktop/business_pics/jongro/jongro1.jpg'), filename: "jongro1.jpg")
