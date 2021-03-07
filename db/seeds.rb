# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'

User.destroy_all
Business.destroy_all
BusinessesCategory.destroy_all

demo_user = User.create!(
    fname: "Demo",
    lname: "User",
    email: "demouser@email.com",
    zip_code: 90210,
    password: "demouser",
    profile_pic: "chandler"
)

user1 = User.create!(
    fname: "Chandler",
    lname: "Bing",
    email: "chandlerbing@email.com",
    zip_code: 90020,
    password: "chandlerbing",
    profile_pic: "chandler"
)
user2 = User.create!(
    fname: "Phoebe",
    lname: "Buffay",
    email: "phoebebuffay@email.com",
    zip_code: 90020,
    password: "phoebebuffay",
    profile_pic: "phoebe"
)
user3 = User.create!(
    fname: "Rachel",
    lname: "Green",
    email: "rachelgreen@email.com",
    zip_code: 90005,
    password: "rachelgreen",
    profile_pic: "rachel"
)
user4 = User.create!(
    fname: "Ross",
    lname: "Geller",
    email: "rossgeller@email.com",
    zip_code: 90022,
    password: "rossgeller",
    profile_pic: "ross"
)
user5 = User.create!(
    fname: "Joey",
    lname: "Tribbiani",
    email: "joeytribbiani@email.com",
    zip_code: 90020,
    password: "joeytribbiani",
    profile_pic: "joey"
)
user6 = User.create!(
    fname: "Monica",
    lname: "Geller",
    email: "monicageller@email.com",
    zip_code: 90020,
    password: "monicageller",
    profile_pic: "monica"
)

business1 = Business.create!(
    name: "Tacos El Gordo",
    address: "315 Cascade Way",
    city: "Cypress",
    state: "CA",
    b_zip_code: 90630,
    phone_num: "(213) 887-9090",
    price_range: "$",
    latitude: 34.010717,
    longitude: -118.285743,
    delivery: false,
    takeout: false,
    outdoor: true
)
file1_1= URI.open('https://welp-aa-seed.s3-us-west-1.amazonaws.com/business_pics/tacos_el_gordo/tacos2.jpg')
file1_2= URI.open('https://welp-aa-seed.s3-us-west-1.amazonaws.com/business_pics/tacos_el_gordo/tacos3.jpg')
file1_3= URI.open('https://welp-aa-seed.s3-us-west-1.amazonaws.com/business_pics/tacos_el_gordo/tacos4.jpg')
file1_4= URI.open('https://welp-aa-seed.s3-us-west-1.amazonaws.com/business_pics/tacos_el_gordo/tacos5.jpg')
business1.photos.attach(io: file1_1, filename: "tacos_gordo1.jpg")
business1.photos.attach(io: file1_2, filename: "tacos_gordo2.jpg")
business1.photos.attach(io: file1_3, filename: "tacos_gordo3.jpg")
business1.photos.attach(io: file1_4, filename: "tacos_gordo4.jpg")
review1a = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 5,
    user_id: user1.id,
    business_id: business1.id
)
review1b = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 5,
    user_id: user2.id,
    business_id: business1.id
)
review1c = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 4,
    user_id: user3.id,
    business_id: business1.id
)
review1d = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 5,
    user_id: user4.id,
    business_id: business1.id
)
review1e = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 2,
    user_id: user5.id,
    business_id: business1.id
)
review1f = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 5,
    user_id: user6.id,
    business_id: business1.id
)
review1g = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 5,
    user_id: demo_user.id,
    business_id: business1.id
)

schedule1m = Schedule.create!(
    day: 'Mon',
    open: "11:00 AM",
    close: "1:00 AM",
    business_id: business1.id
)
schedule1t = Schedule.create!(
    day: 'Tue',
    open: "11:00 AM",
    close: "1:00 AM",
    business_id: business1.id
)
schedule1w = Schedule.create!(
    day: 'Wed',
    open: "11:00 AM",
    close: "1:00 AM",
    business_id: business1.id
)
schedule1th = Schedule.create!(
    day: 'Thu',
    open: "11:00 AM",
    close: "1:00 AM",
    business_id: business1.id
)
schedule1f = Schedule.create!(
    day: 'Fri',
    open: "11:00 AM",
    close: "3:00 AM",
    business_id: business1.id
)
schedule1s = Schedule.create!(
    day: 'Sat',
    open: "11:00 AM",
    close: "3:00 AM",
    business_id: business1.id
)
schedule1ss = Schedule.create!(
    day: 'Sun',
    open: "11:00 AM",
    close: "1:00 AM",
    business_id: business1.id
)


business2 = Business.create!(
    name: "I Heart Sushi",
    address: "3 Bright Way",
    city: "Cypress",
    state: "CA",
    b_zip_code: 90702,
    phone_num: "(714) 999-9090",
    price_range: "$$",
    latitude: 34.062523,
    longitude: -118.307196,
    delivery: true,
    takeout: true,
    outdoor: true
)
file2_1 = URI.open('https://welp-aa-seed.s3-us-west-1.amazonaws.com/business_pics/i_heart_sushi/sushi1.jpg')
file2_2 = URI.open('https://welp-aa-seed.s3-us-west-1.amazonaws.com/business_pics/i_heart_sushi/sushi2.jpg')
file2_3 = URI.open('https://welp-aa-seed.s3-us-west-1.amazonaws.com/business_pics/i_heart_sushi/sushi3.jpg')
file2_4 = URI.open('https://welp-aa-seed.s3-us-west-1.amazonaws.com/business_pics/i_heart_sushi/sushi4.jpg')
business2.photos.attach(io: file2_1, filename: "i_heart_sushi1.jpg")
business2.photos.attach(io: file2_2, filename: "i_heart_sushi2.jpg")
business2.photos.attach(io: file2_3, filename: "i_heart_sushi3.jpg")
business2.photos.attach(io: file2_4, filename: "i_heart_sushi4.jpg")
review2a = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 3,
    user_id: user1.id,
    business_id: business2.id
)
review2b = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 4,
    user_id: user2.id,
    business_id: business2.id
)
review2c = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 4,
    user_id: user3.id,
    business_id: business2.id
)
review2d = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 5,
    user_id: user4.id,
    business_id: business2.id
)
review2e = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 2,
    user_id: user5.id,
    business_id: business2.id
)
review2f = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 4,
    user_id: user6.id,
    business_id: business2.id
)
review2g = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 5,
    user_id: demo_user.id,
    business_id: business2.id
)

schedule2m = Schedule.create!(
    day: 'Mon',
    open: "11:00 AM",
    close: "10:00 PM",
    business_id: business2.id
)
schedule2t = Schedule.create!(
    day: 'Tue',
    open: "11:00 AM",
    close: "10:00 PM",
    business_id: business2.id
)
schedule2w = Schedule.create!(
    day: 'Wed',
    open: "11:00 AM",
    close: "10:00 PM",
    business_id: business2.id
)
schedule2th = Schedule.create!(
    day: 'Thu',
    open: "11:00 AM",
    close: "10:00 PM",
    business_id: business2.id
)
schedule2f = Schedule.create!(
    day: 'Fri',
    open: "11:00 AM",
    close: "11:00 PM",
    business_id: business2.id
)
schedule2s = Schedule.create!(
    day: 'Sat',
    open: "11:00 AM",
    close: "11:00 PM",
    business_id: business2.id
)
schedule2ss = Schedule.create!(
    day: 'Sun',
    open: "11:00 AM",
    close: "10:00 PM",
    business_id: business2.id
)


business3 = Business.create!(
    name: "JongRo",
    address: "123 Comb Lane",
    city: "Artesia",
    state: "CA",
    b_zip_code: 90701,
    phone_num: "(714) 111-1111",
    price_range: "$$",
    latitude: 34.030778,
    longitude: -118.250506,
    delivery: false,
    takeout: true,
    outdoor: true
)
file3_1 = URI.open('https://welp-aa-seed.s3-us-west-1.amazonaws.com/business_pics/jongro/jongro1.jpg')
file3_2 = URI.open('https://welp-aa-seed.s3-us-west-1.amazonaws.com/business_pics/jongro/jongro2.jpg')
file3_3 = URI.open('https://welp-aa-seed.s3-us-west-1.amazonaws.com/business_pics/jongro/jongro3.jpg')
file3_4 = URI.open('https://welp-aa-seed.s3-us-west-1.amazonaws.com/business_pics/jongro/jongro4.jpg')
business3.photos.attach(io: file3_1, filename: "jongro_jip1.jpg")
business3.photos.attach(io: file3_2, filename: "jongro_jip2.jpg")
business3.photos.attach(io: file3_3, filename: "jongro_jip3.jpg")
business3.photos.attach(io: file3_4, filename: "jongro_jip4.jpg")

review3a = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 5,
    user_id: user1.id,
    business_id: business3.id
)
review3b = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 5,
    user_id: user2.id,
    business_id: business3.id
)
review3c = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 4,
    user_id: user3.id,
    business_id: business3.id
)
review3d = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 3,
    user_id: user4.id,
    business_id: business3.id
)
review3e = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 3,
    user_id: user5.id,
    business_id: business3.id
)
review3f = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 5,
    user_id: user6.id,
    business_id: business3.id
)
review3g = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 4,
    user_id: demo_user.id,
    business_id: business3.id
)

schedule3m = Schedule.create!(
    day: 'Mon',
    open: "11:00 AM",
    close: "12:00 AM",
    business_id: business3.id
)
schedule3t = Schedule.create!(
    day: 'Tue',
    open: "11:00 AM",
    close: "12:00 AM",
    business_id: business3.id
)
schedule3w = Schedule.create!(
    day: 'Wed',
    open: "11:00 AM",
    close: "12:00 AM",
    business_id: business3.id
)
schedule3th = Schedule.create!(
    day: 'Thu',
    open: "11:00 AM",
    close: "12:00 AM",
    business_id: business3.id
)
schedule3f = Schedule.create!(
    day: 'Fri',
    open: "11:00 AM",
    close: "2:00 AM",
    business_id: business3.id
)
schedule3s = Schedule.create!(
    day: 'Sat',
    open: "11:00 AM",
    close: "2:00 AM",
    business_id: business3.id
)
schedule3ss = Schedule.create!(
    day: 'Sun',
    open: "11:00 AM",
    close: "2:00 AM",
    business_id: business3.id
)


business4 = Business.create!(
    name: "Taco Maggie",
    address: "111 Beach Blvd.",
    city: "Buena Park",
    state: "CA",
    b_zip_code: 90621,
    phone_num: "(714) 123-4444",
    price_range: "$",
    latitude: 34.044187,
    longitude: -118.293857,
    delivery: false,
    takeout: true,
    outdoor: true
)
file4_1 = URI.open('https://welp-aa-seed.s3-us-west-1.amazonaws.com/business_pics/taco_maggie/taco_maggie1.jpg')
file4_2 = URI.open('https://welp-aa-seed.s3-us-west-1.amazonaws.com/business_pics/taco_maggie/taco_maggie2.jpg')
file4_3 = URI.open('https://welp-aa-seed.s3-us-west-1.amazonaws.com/business_pics/taco_maggie/taco_maggie3.jpg')
file4_4 = URI.open('https://welp-aa-seed.s3-us-west-1.amazonaws.com/business_pics/taco_maggie/taco_maggie4.jpg')
business4.photos.attach(io: file4_1, filename: "taco_maggie5.jpg")
business4.photos.attach(io: file4_2, filename: "taco_maggie6.jpg")
business4.photos.attach(io: file4_3, filename: "taco_maggie7.jpg")
business4.photos.attach(io: file4_4, filename: "taco_maggie8.jpg")

review4a = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 5,
    user_id: user1.id,
    business_id: business4.id
)
review4b = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 5,
    user_id: user2.id,
    business_id: business4.id
)
review4c = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 4,
    user_id: user3.id,
    business_id: business4.id
)
review4d = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 5,
    user_id: user4.id,
    business_id: business4.id
)
review4e = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 4,
    user_id: user5.id,
    business_id: business4.id
)
review4f = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 5,
    user_id: user6.id,
    business_id: business4.id
)
review4g = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 5,
    user_id: demo_user.id,
    business_id: business4.id
)

schedule4m = Schedule.create!(
    day: 'Mon',
    open: "7:00 PM",
    close: "3:00 AM",
    business_id: business4.id
)
schedule4t = Schedule.create!(
    day: 'Tue',
    open: "7:00 PM",
    close: "3:00 AM",
    business_id: business4.id
)
schedule4w = Schedule.create!(
    day: 'Wed',
    open: "7:00 PM",
    close: "3:00 AM",
    business_id: business4.id
)
schedule4th = Schedule.create!(
    day: 'Thu',
    open: "7:00 PM",
    close: "3:00 AM",
    business_id: business4.id
)
schedule4f = Schedule.create!(
    day: 'Fri',
    open: "7:00 PM",
    close: "3:00 AM",
    business_id: business4.id
)
schedule4s = Schedule.create!(
    day: 'Sat',
    open: "7:00 PM",
    close: "3:00 AM",
    business_id: business4.id
)
schedule4ss = Schedule.create!(
    day: 'Sun',
    open: "7:00 PM",
    close: "3:00 AM",
    business_id: business4.id
)


business5 = Business.create!(
    name: "Blue Bottle Coffee",
    address: "3424 Fullerton Ave.",
    city: "Fullerton",
    state: "CA",
    b_zip_code: 90345,
    phone_num: "(562) 888-4444",
    price_range: "$",
    latitude: 34.049094,
    longitude: -118.248282,
    delivery: false,
    takeout: true,
    outdoor: false
)
file5_1 = URI.open('https://welp-aa-seed.s3-us-west-1.amazonaws.com/business_pics/blue_bottle/blue_bottle1.jpg')
file5_2 = URI.open('https://welp-aa-seed.s3-us-west-1.amazonaws.com/business_pics/blue_bottle/blue_bottle2.jpg')
file5_3 = URI.open('https://welp-aa-seed.s3-us-west-1.amazonaws.com/business_pics/blue_bottle/blue_bottle3.jpg')
file5_4 = URI.open('https://welp-aa-seed.s3-us-west-1.amazonaws.com/business_pics/blue_bottle/blue_bottle4.jpg')
business5.photos.attach(io: file5_1, filename: "blue_bottle_coffee1.jpg")
business5.photos.attach(io: file5_2, filename: "blue_bottle_coffee2.jpg")
business5.photos.attach(io: file5_3, filename: "blue_bottle_coffee3.jpg")
business5.photos.attach(io: file5_4, filename: "blue_bottle_coffee4.jpg")

review5a = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 5,
    user_id: user1.id,
    business_id: business5.id
)
review5b = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 5,
    user_id: user2.id,
    business_id: business5.id
)
review5c = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 4,
    user_id: user3.id,
    business_id: business5.id
)
review5d = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 5,
    user_id: user4.id,
    business_id: business5.id
)
review5e = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 5,
    user_id: user5.id,
    business_id: business5.id
)
review5f = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 5,
    user_id: user6.id,
    business_id: business5.id
)
review5g = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 5,
    user_id: demo_user.id,
    business_id: business5.id
)

schedule5m = Schedule.create!(
    day: 'Mon',
    open: "7:00 AM",
    close: "3:00 PM",
    business_id: business5.id
)
schedule5t = Schedule.create!(
    day: 'Tue',
    open: "7:00 AM",
    close: "3:00 PM",
    business_id: business5.id
)
schedule5w = Schedule.create!(
    day: 'Wed',
    open: "7:00 AM",
    close: "3:00 PM",
    business_id: business5.id
)
schedule5th = Schedule.create!(
    day: 'Thu',
    open: "7:00 AM",
    close: "3:00 PM",
    business_id: business5.id
)
schedule5f = Schedule.create!(
    day: 'Fri',
    open: "7:00 AM",
    close: "3:00 PM",
    business_id: business5.id
)
schedule5s = Schedule.create!(
    day: 'Sat',
    open: "7:00 AM",
    close: "3:00 PM",
    business_id: business5.id
)
schedule5ss = Schedule.create!(
    day: 'Sun',
    open: "7:00 AM",
    close: "3:00 PM",
    business_id: business5.id
)


business6 = Business.create!(
    name: "In N Out",
    address: "2 Beach Blvd.",
    city: "Huntington Beach",
    state: "CA",
    b_zip_code: 92333,
    phone_num: "(714) 442-0000",
    price_range: "$",
    latitude: 34.080418,
    longitude: -118.217260,
    delivery: false,
    takeout: true,
    outdoor: true
)
file6_1 = URI.open('https://welp-aa-seed.s3-us-west-1.amazonaws.com/business_pics/innout/innout1.jpg')
file6_2 = URI.open('https://welp-aa-seed.s3-us-west-1.amazonaws.com/business_pics/innout/innout2.jpg')
file6_3 = URI.open('https://welp-aa-seed.s3-us-west-1.amazonaws.com/business_pics/innout/innout3.jpg')
file6_4 = URI.open('https://welp-aa-seed.s3-us-west-1.amazonaws.com/business_pics/innout/innout4.jpg')
business6.photos.attach(io: file6_1, filename: "innout_1.jpg")
business6.photos.attach(io: file6_2, filename: "innout_2.jpg")
business6.photos.attach(io: file6_3, filename: "innout_3.jpg")
business6.photos.attach(io: file6_4, filename: "innout_4.jpg")

review6a = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 5,
    user_id: user1.id,
    business_id: business6.id
)
review6b = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 5,
    user_id: user2.id,
    business_id: business6.id
)
review6c = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 5,
    user_id: user3.id,
    business_id: business6.id
)
review6d = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 5,
    user_id: user4.id,
    business_id: business6.id
)
review6e = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 5,
    user_id: user5.id,
    business_id: business6.id
)
review6f = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 5,
    user_id: user6.id,
    business_id: business6.id
)
review6g = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 5,
    user_id: demo_user.id,
    business_id: business6.id
)

schedule6m = Schedule.create!(
    day: 'Mon',
    open: "10:30 AM",
    close: "1:30 AM",
    business_id: business6.id
)
schedule6t = Schedule.create!(
    day: 'Tue',
    open: "10:30 AM",
    close: "1:30 AM",
    business_id: business6.id
)
schedule6w = Schedule.create!(
    day: 'Wed',
    open: "10:30 AM",
    close: "1:30 AM",
    business_id: business6.id
)
schedule6th = Schedule.create!(
    day: 'Thu',
    open: "10:30 AM",
    close: "1:30 AM",
    business_id: business6.id
)
schedule6f = Schedule.create!(
    day: 'Fri',
    open: "10:30 AM",
    close: "2:00 AM",
    business_id: business6.id
)
schedule6s = Schedule.create!(
    day: 'Sat',
    open: "10:30 AM",
    close: "2:00 AM",
    business_id: business6.id
)
schedule6ss = Schedule.create!(
    day: 'Sun',
    open: "10:30 AM",
    close: "1:30 AM",
    business_id: business6.id
)



business7 = Business.create!(
    name: "Off Street Cafe",
    address: "3087 Bellflower Blvd.",
    city: "Bellflower",
    state: "CA",
    b_zip_code: 90989,
    phone_num: "(562) 080-2231",
    price_range: "$$",
    latitude: 34.043483,
    longitude: -118.253894,
    delivery: true,
    takeout: true,
    outdoor: true
)
file7_1 = URI.open('https://welp-aa-seed.s3-us-west-1.amazonaws.com/business_pics/off_street/off_street1.jpg')
file7_2 = URI.open('https://welp-aa-seed.s3-us-west-1.amazonaws.com/business_pics/off_street/off_street2.jpg')
file7_3 = URI.open('https://welp-aa-seed.s3-us-west-1.amazonaws.com/business_pics/off_street/off_street3.jpg')
file7_4 = URI.open('https://welp-aa-seed.s3-us-west-1.amazonaws.com/business_pics/off_street/off_street4.jpg')
business7.photos.attach(io: file7_1, filename: "off_street_cafe1.jpg")
business7.photos.attach(io: file7_2, filename: "off_street_cafe2.jpg")
business7.photos.attach(io: file7_3, filename: "off_street_cafe3.jpg")
business7.photos.attach(io: file7_4, filename: "off_street_cafe4.jpg")

review7a = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 4,
    user_id: user1.id,
    business_id: business7.id
)
review7b = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 5,
    user_id: user2.id,
    business_id: business7.id
)
review7c = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 4,
    user_id: user3.id,
    business_id: business7.id
)
review7d = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 5,
    user_id: user4.id,
    business_id: business7.id
)
review7e = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 3,
    user_id: user5.id,
    business_id: business7.id
)
review7f = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 4,
    user_id: user6.id,
    business_id: business7.id
)
review7g = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 4,
    user_id: demo_user.id,
    business_id: business7.id
)

schedule7m = Schedule.create!(
    day: 'Mon',
    open: "7:30 AM",
    close: "4:30 PM",
    business_id: 7
)
schedule7t = Schedule.create!(
    day: 'Tue',
    open: "7:30 AM",
    close: "4:30 PM",
    business_id: business7.id
)
schedule7w = Schedule.create!(
    day: 'Wed',
    open: "7:30 AM",
    close: "4:30 PM",
    business_id: business7.id
)
schedule7th = Schedule.create!(
    day: 'Thu',
    open: "7:30 AM",
    close: "4:30 PM",
    business_id: business7.id
)
schedule7f = Schedule.create!(
    day: 'Fri',
    open: "7:30 AM",
    close: "4:00 PM",
    business_id: business7.id
)
schedule7s = Schedule.create!(
    day: 'Sat',
    open: "7:30 AM",
    close: "4:00 PM",
    business_id: business7.id
)
schedule7ss = Schedule.create!(
    day: 'Sun',
    open: "7:30 AM",
    close: "4:30 PM",
    business_id: business7.id
)



business8 = Business.create!(
    name: "Ozen Sushi",
    address: "22 183rd St.",
    city: "Cerritos",
    state: "CA",
    b_zip_code: 90331,
    phone_num: "(562) 202-3030",
    price_range: "$$",
    latitude: 34.095122,
    longitude: -118.332729,
    delivery: true,
    takeout: true,
    outdoor: true
)
file8_1 = URI.open('https://welp-aa-seed.s3-us-west-1.amazonaws.com/business_pics/ozen/ozen1.jpg')
file8_2 = URI.open('https://welp-aa-seed.s3-us-west-1.amazonaws.com/business_pics/ozen/ozen2.jpg')
file8_3 = URI.open('https://welp-aa-seed.s3-us-west-1.amazonaws.com/business_pics/ozen/ozen3.jpg')
file8_4 = URI.open('https://welp-aa-seed.s3-us-west-1.amazonaws.com/business_pics/ozen/ozen4.jpg')
business8.photos.attach(io: file8_1, filename: "ozen_sushi1.jpg")
business8.photos.attach(io: file8_2, filename: "ozen_sushi2.jpg")
business8.photos.attach(io: file8_3, filename: "ozen_sushi3.jpg")
business8.photos.attach(io: file8_4, filename: "ozen_sushi4.jpg")

review8a = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 4,
    user_id: user1.id,
    business_id: business8.id
)
review8b = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 4,
    user_id: user2.id,
    business_id: business8.id
)
review8c = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 3,
    user_id: user3.id,
    business_id: business8.id
)
review8d = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 5,
    user_id: user4.id,
    business_id: business8.id
)
review8e = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 2,
    user_id: user5.id,
    business_id: business8.id
)
review8f = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 3,
    user_id: user6.id,
    business_id: business8.id
)
review8g = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 4,
    user_id: demo_user.id,
    business_id: business8.id
)

schedule8m = Schedule.create!(
    day: 'Mon',
    open: "10:30 AM",
    close: "11:00 PM",
    business_id: business8.id
)
schedule8t = Schedule.create!(
    day: 'Tue',
    open: "10:30 AM",
    close: "11:00 PM",
    business_id: business8.id
)
schedule8w = Schedule.create!(
    day: 'Wed',
    open: "10:30 AM",
    close: "11:00 PM",
    business_id: business8.id
)
schedule8th = Schedule.create!(
    day: 'Thu',
    open: "10:30 AM",
    close: "11:00 PM",
    business_id: business8.id
)
schedule8f = Schedule.create!(
    day: 'Fri',
    open: "10:30 AM",
    close: "11:30 PM",
    business_id: business8.id
)
schedule8s = Schedule.create!(
    day: 'Sat',
    open: "10:30 AM",
    close: "11:30 PM",
    business_id: business8.id
)
schedule8ss = Schedule.create!(
    day: 'Sun',
    open: "10:30 AM",
    close: "11:00 PM",
    business_id: business8.id
)



business9 = Business.create!(
    name: "Chodang",
    address: "659 Artesia Blvd.",
    city: "Cerritos",
    state: "CA",
    b_zip_code: 90777,
    phone_num: "(562) 444-1111",
    price_range: "$$",
    latitude: 34.062634,
    longitude: -118.301069,
    delivery: true,
    takeout: true,
    outdoor: true
)
file9_1 = URI.open('https://welp-aa-seed.s3-us-west-1.amazonaws.com/business_pics/chodang/chodang1.jpg')
file9_2 = URI.open('https://welp-aa-seed.s3-us-west-1.amazonaws.com/business_pics/chodang/chodang2.jpg')
file9_3 = URI.open('https://welp-aa-seed.s3-us-west-1.amazonaws.com/business_pics/chodang/chodang3.jpg')
file9_4 = URI.open('https://welp-aa-seed.s3-us-west-1.amazonaws.com/business_pics/chodang/chodang4.jpg')
business9.photos.attach(io: file9_1, filename: "chodang_tofu1.jpg")
business9.photos.attach(io: file9_2, filename: "chodang_tofu2.jpg")
business9.photos.attach(io: file9_3, filename: "chodang_tofu3.jpg")
business9.photos.attach(io: file9_4, filename: "chodang_tofu4.jpg")

review9a = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 4,
    user_id: user1.id,
    business_id: business9.id
)
review9b = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 5,
    user_id: user2.id,
    business_id: business9.id
)
review9c = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 4,
    user_id: user3.id,
    business_id: business9.id
)
review9d = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 5,
    user_id: user4.id,
    business_id: business9.id
)
review9e = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 4,
    user_id: user5.id,
    business_id: business9.id
)
review9f = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 5,
    user_id: user6.id,
    business_id: business9.id
)
review9g = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 5,
    user_id: demo_user.id,
    business_id: business9.id
)

schedule9m = Schedule.create!(
    day: 'Mon',
    open: "9:30 AM",
    close: "9:30 PM",
    business_id: business9.id
)
schedule9t = Schedule.create!(
    day: 'Tue',
    open: "9:30 AM",
    close: "9:30 PM",
    business_id: business9.id
)
schedule9w = Schedule.create!(
    day: 'Wed',
    open: "9:30 AM",
    close: "9:30 PM",
    business_id: business9.id
)
schedule9th = Schedule.create!(
    day: 'Thu',
    open: "9:30 AM",
    close: "9:30 PM",
    business_id: business9.id
)
schedule9f = Schedule.create!(
    day: 'Fri',
    open: "9:30 AM",
    close: "9:30 PM",
    business_id: business9.id
)
schedule9s = Schedule.create!(
    day: 'Sat',
    open: "9:30 AM",
    close: "9:30 PM",
    business_id: business9.id
)
schedule9ss = Schedule.create!(
    day: 'Sun',
    open: "9:30 AM",
    close: "9:30 PM",
    business_id: business9.id
)



business10 = Business.create!(
    name: "Phils BBQ",
    address: "1123 South St.",
    city: "Cerritos",
    state: "CA",
    b_zip_code: 92000,
    phone_num: "(562) 098-2534",
    price_range: "$$",
    latitude: 34.114020,
    longitude: -118.280380,
    delivery: false,
    takeout: true,
    outdoor: true
)
file10_1 = URI.open('https://welp-aa-seed.s3-us-west-1.amazonaws.com/business_pics/phils/phils1.jpg')
file10_2 = URI.open('https://welp-aa-seed.s3-us-west-1.amazonaws.com/business_pics/phils/phils2.jpg')
file10_3 = URI.open('https://welp-aa-seed.s3-us-west-1.amazonaws.com/business_pics/phils/phils3.jpg')
file10_4 = URI.open('https://welp-aa-seed.s3-us-west-1.amazonaws.com/business_pics/phils/phils4.jpg')
business10.photos.attach(io: file10_1, filename: "phils1.jpg")
business10.photos.attach(io: file10_2, filename: "phils2.jpg")
business10.photos.attach(io: file10_3, filename: "phils3.jpg")
business10.photos.attach(io: file10_4, filename: "phils4.jpg")

review10a = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 5,
    user_id: user1.id,
    business_id: business10.id
)
review10b = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 4,
    user_id: user2.id,
    business_id: business10.id
)
review10c = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 4,
    user_id: user3.id,
    business_id: business10.id
)
review10d = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 5,
    user_id: user4.id,
    business_id: business10.id
)
review10e = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 4,
    user_id: user5.id,
    business_id: business10.id
)
review10f = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 5,
    user_id: user6.id,
    business_id: business10.id
)
review10g = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 4,
    user_id: demo_user.id,
    business_id: business10.id
)

schedule10m = Schedule.create!(
    day: 'Mon',
    open: "11:30 AM",
    close: "9:30 PM",
    business_id: business10.id
)
schedule10t = Schedule.create!(
    day: 'Tue',
    open: "11:30 AM",
    close: "9:30 PM",
    business_id: business10.id
)
schedule10w = Schedule.create!(
    day: 'Wed',
    open: "11:30 AM",
    close: "9:30 PM",
    business_id: business10.id
)
schedule10th = Schedule.create!(
    day: 'Thu',
    open: "11:30 AM",
    close: "9:30 PM",
    business_id: business10.id
)
schedule10f = Schedule.create!(
    day: 'Fri',
    open: "11:30 AM",
    close: "11:00 PM",
    business_id: business10.id
)
schedule10s = Schedule.create!(
    day: 'Sat',
    open: "11:30 AM",
    close: "11:00 PM",
    business_id: business10.id
)
schedule10ss = Schedule.create!(
    day: 'Sun',
    open: "11:30 AM",
    close: "9:30 PM",
    business_id: business10.id
)


category1 = Category.create!(category: "Tacos")
category2 = Category.create!(category: "Sushi")
category3 = Category.create!(category: "Bbq")
category4 = Category.create!(category: "Breakfast")
category5 = Category.create!(category: "Lunch")
category6 = Category.create!(category: "Dinner")
category7 = Category.create!(category: "Mexican")
category8 = Category.create!(category: "Japanese")
category9 = Category.create!(category: "Korean")
category10 = Category.create!(category: "American")
category11 = Category.create!(category: "Coffee")

b_c1 = BusinessesCategory.create!(business_id: business1.id, category_id: category1.id)
b_c2 = BusinessesCategory.create!(business_id: business1.id, category_id: category5.id)
b_c3 = BusinessesCategory.create!(business_id: business1.id, category_id: category7.id)

b_c4 = BusinessesCategory.create!(business_id: business2.id, category_id: category2.id)
b_c5 = BusinessesCategory.create!(business_id: business2.id, category_id: category5.id)
b_c6 = BusinessesCategory.create!(business_id: business2.id, category_id: category8.id)

b_c7 = BusinessesCategory.create!(business_id: business3.id, category_id: category3.id)
b_c8 = BusinessesCategory.create!(business_id: business3.id, category_id: category6.id)
b_c9 = BusinessesCategory.create!(business_id: business3.id, category_id: category9.id)

b_c10 = BusinessesCategory.create!(business_id: business4.id, category_id: category1.id)
b_c11 = BusinessesCategory.create!(business_id: business4.id, category_id: category6.id)
b_c12 = BusinessesCategory.create!(business_id: business4.id, category_id: category7.id)

b_c13 = BusinessesCategory.create!(business_id: business5.id, category_id: category4.id)
b_c14 = BusinessesCategory.create!(business_id: business5.id, category_id: category10.id)
b_c15 = BusinessesCategory.create!(business_id: business5.id, category_id: category11.id)

b_c16 = BusinessesCategory.create!(business_id: business6.id, category_id: category5.id)
b_c17 = BusinessesCategory.create!(business_id: business6.id, category_id: category6.id)
b_c18 = BusinessesCategory.create!(business_id: business6.id, category_id: category10.id)

b_c19 = BusinessesCategory.create!(business_id: business7.id, category_id: category4.id)
b_c20 = BusinessesCategory.create!(business_id: business7.id, category_id: category5.id)
b_c21 = BusinessesCategory.create!(business_id: business7.id, category_id: category11.id)

b_c22 = BusinessesCategory.create!(business_id: business8.id, category_id: category2.id)
b_c23 = BusinessesCategory.create!(business_id: business8.id, category_id: category6.id)
b_c24 = BusinessesCategory.create!(business_id: business8.id, category_id: category8.id)

b_c25 = BusinessesCategory.create!(business_id: business9.id, category_id: category5.id)
b_c26 = BusinessesCategory.create!(business_id: business9.id, category_id: category6.id)
b_c27 = BusinessesCategory.create!(business_id: business9.id, category_id: category9.id)

b_c28 = BusinessesCategory.create!(business_id: business10.id, category_id: category3.id)
b_c29 = BusinessesCategory.create!(business_id: business10.id, category_id: category6.id)
b_c30 = BusinessesCategory.create!(business_id: business10.id, category_id: category10.id)



