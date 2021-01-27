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
business1.photos.attach(io: File.open('/Users/hojungcha/Desktop/business_pics/tacos_el_gordo/tacos2.jpg'), filename: "tacos2.jpg")
business1.photos.attach(io: File.open('/Users/hojungcha/Desktop/business_pics/tacos_el_gordo/tacos3.jpg'), filename: "tacos3.jpg")
business1.photos.attach(io: File.open('/Users/hojungcha/Desktop/business_pics/tacos_el_gordo/tacos4.jpg'), filename: "tacos4.jpg")
business1.photos.attach(io: File.open('/Users/hojungcha/Desktop/business_pics/tacos_el_gordo/tacos5.jpg'), filename: "tacos5.jpg")

business2 = Business.create!(
    name: "I Heart Sushi",
    address: "3 Bright Way",
    city: "Cypress",
    state: "CA",
    b_zip_code: 90702,
    phone_num: "714-999-9090",
    price_range: "$$",
    longitude: 60.2113,
    latitude: 51.4555
)
business2.photos.attach(io: File.open('/Users/hojungcha/Desktop/business_pics/i_heart_sushi/sushi1.jpg'), filename: "sushi1.jpg")
business2.photos.attach(io: File.open('/Users/hojungcha/Desktop/business_pics/i_heart_sushi/sushi2.jpg'), filename: "sushi2.jpg")
business2.photos.attach(io: File.open('/Users/hojungcha/Desktop/business_pics/i_heart_sushi/sushi3.jpg'), filename: "sushi3.jpg")
business2.photos.attach(io: File.open('/Users/hojungcha/Desktop/business_pics/i_heart_sushi/sushi4.jpg'), filename: "sushi4.jpg")


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

business3.photos.attach(io: File.open('/Users/hojungcha/Desktop/business_pics/jongro/jongro1.jpg'), filename: "jongro_new1.jpg")
business3.photos.attach(io: File.open('/Users/hojungcha/Desktop/business_pics/jongro/jongro2.jpg'), filename: "jongro_new2.jpg")
business3.photos.attach(io: File.open('/Users/hojungcha/Desktop/business_pics/jongro/jongro3.jpg'), filename: "jongro_new3.jpg")
business3.photos.attach(io: File.open('/Users/hojungcha/Desktop/business_pics/jongro/jongro4.jpg'), filename: "jongro_new4.jpg")
