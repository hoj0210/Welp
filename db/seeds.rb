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
file5_1 = URI.open('https://welp-aa-seed.s3-us-west-1.amazonaws.com/business_pics/blue_bottle/blue_bottle4.jpg')
file5_2 = URI.open('https://welp-aa-seed.s3-us-west-1.amazonaws.com/business_pics/blue_bottle/blue_bottle2.jpg')
file5_3 = URI.open('https://welp-aa-seed.s3-us-west-1.amazonaws.com/business_pics/blue_bottle/blue_bottle3.jpg')
file5_4 = URI.open('https://welp-aa-seed.s3-us-west-1.amazonaws.com/business_pics/blue_bottle/blue_bottle1.jpg')
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
file6_1 = URI.open('https://welp-aa-seed.s3-us-west-1.amazonaws.com/business_pics/innout/innout2.jpg')
file6_2 = URI.open('https://welp-aa-seed.s3-us-west-1.amazonaws.com/business_pics/innout/innout1.jpg')
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
file8_1 = URI.open('https://welp-aa-seed.s3-us-west-1.amazonaws.com/business_pics/ozen/ozen4.jpg')
file8_2 = URI.open('https://welp-aa-seed.s3-us-west-1.amazonaws.com/business_pics/ozen/ozen2.jpg')
file8_3 = URI.open('https://welp-aa-seed.s3-us-west-1.amazonaws.com/business_pics/ozen/ozen3.jpg')
file8_4 = URI.open('https://welp-aa-seed.s3-us-west-1.amazonaws.com/business_pics/ozen/ozen1.jpg')
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



business11 = Business.create!(
    name: "Albertacos",
    address: "1543 Gramercy Place",
    city: "Los Angeles",
    state: "CA",
    b_zip_code: 90005,
    phone_num: "(213) 821-4564",
    price_range: "$",
    latitude: 34.010737,
    longitude: -118.285743,
    delivery: false,
    takeout: true,
    outdoor: true
)
file11_1= URI.open('https://welp-aa-seed.s3-us-west-1.amazonaws.com/business_pics2/albertacos/albertacos1.jpg')
file11_2= URI.open('https://welp-aa-seed.s3-us-west-1.amazonaws.com/business_pics2/albertacos/albertacos2.jpg')
file11_3= URI.open('https://welp-aa-seed.s3-us-west-1.amazonaws.com/business_pics2/albertacos/albertacos3.jpg')
file11_4= URI.open('https://welp-aa-seed.s3-us-west-1.amazonaws.com/business_pics2/albertacos/albertacos4.jpg')
business11.photos.attach(io: file11_1, filename: "albertacos1.jpg")
business11.photos.attach(io: file11_2, filename: "albertacos2.jpg")
business11.photos.attach(io: file11_3, filename: "albertacos3.jpg")
business11.photos.attach(io: file11_4, filename: "albertacos4.jpg")
review11a = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 4,
    user_id: user1.id,
    business_id: business11.id
)
review11b = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 5,
    user_id: user2.id,
    business_id: business11.id
)
review11c = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 4,
    user_id: user3.id,
    business_id: business11.id
)
review11d = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 4,
    user_id: user4.id,
    business_id: business11.id
)
review11e = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 2,
    user_id: user5.id,
    business_id: business11.id
)
review11f = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 5,
    user_id: user6.id,
    business_id: business11.id
)
review11g = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 4,
    user_id: demo_user.id,
    business_id: business11.id
)

schedule11m = Schedule.create!(
    day: 'Mon',
    open: "12:00 AM",
    close: "11:59 PM",
    business_id: business11.id
)
schedule11t = Schedule.create!(
    day: 'Tue',
    open: "12:00 AM",
    close: "11:59 PM",
    business_id: business11.id
)
schedule11w = Schedule.create!(
    day: 'Wed',
    open: "12:00 AM",
    close: "11:59 PM",
    business_id: business11.id
)
schedule11th = Schedule.create!(
    day: 'Thu',
    open: "12:00 AM",
    close: "11:59 PM",
    business_id: business11.id
)
schedule11f = Schedule.create!(
    day: 'Fri',
    open: "12:00 AM",
    close: "11:59 PM",
    business_id: business11.id
)
schedule11s = Schedule.create!(
    day: 'Sat',
    open: "12:00 AM",
    close: "11:59 PM",
    business_id: business11.id
)
schedule11ss = Schedule.create!(
    day: 'Sun',
    open: "12:00 AM",
    close: "11:59 PM",
    business_id: business11.id
)




business12 = Business.create!(
    name: "Baekjeong",
    address: "1211 6th St",
    city: "Los Angeles",
    state: "CA",
    b_zip_code: 90006,
    phone_num: "(213) 442-2839",
    price_range: "$$",
    latitude: 34.010777,
    longitude: -118.285743,
    delivery: false,
    takeout: false,
    outdoor: true
)
file12_1= URI.open('https://welp-aa-seed.s3-us-west-1.amazonaws.com/business_pics2/baekjeong/baekjeong1.jpg')
file12_2= URI.open('https://welp-aa-seed.s3-us-west-1.amazonaws.com/business_pics2/baekjeong/baekjeong2.jpg')
file12_3= URI.open('https://welp-aa-seed.s3-us-west-1.amazonaws.com/business_pics2/baekjeong/baekjeong3.jpg')
file12_4= URI.open('https://welp-aa-seed.s3-us-west-1.amazonaws.com/business_pics2/baekjeong/baekjeong4.jpg')
business12.photos.attach(io: file12_1, filename: "baekjeong1.jpg")
business12.photos.attach(io: file12_2, filename: "baekjeong2.jpg")
business12.photos.attach(io: file12_3, filename: "baekjeong3.jpg")
business12.photos.attach(io: file12_4, filename: "baekjeong4.jpg")
review12a = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 5,
    user_id: user1.id,
    business_id: business12.id
)
review12b = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 5,
    user_id: user2.id,
    business_id: business12.id
)
review12c = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 4,
    user_id: user3.id,
    business_id: business12.id
)
review12d = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 5,
    user_id: user4.id,
    business_id: business12.id
)
review12e = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 5,
    user_id: user5.id,
    business_id: business12.id
)
review12f = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 5,
    user_id: user6.id,
    business_id: business12.id
)
review12g = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 5,
    user_id: demo_user.id,
    business_id: business12.id
)

schedule12m = Schedule.create!(
    day: 'Mon',
    open: "11:30 AM",
    close: "1:00 AM",
    business_id: business12.id
)
schedule12t = Schedule.create!(
    day: 'Tue',
    open: "11:30 AM",
    close: "1:00 AM",
    business_id: business12.id
)
schedule12w = Schedule.create!(
    day: 'Wed',
    open: "11:30 AM",
    close: "1:00 AM",
    business_id: business12.id
)
schedule12th = Schedule.create!(
    day: 'Thu',
    open: "11:30 AM",
    close: "1:00 AM",
    business_id: business12.id
)
schedule12f = Schedule.create!(
    day: 'Fri',
    open: "11:30 AM",
    close: "1:00 AM",
    business_id: business12.id
)
schedule12s = Schedule.create!(
    day: 'Sat',
    open: "11:30 AM",
    close: "1:00 AM",
    business_id: business12.id
)
schedule12ss = Schedule.create!(
    day: 'Sun',
    open: "11:30 AM",
    close: "1:00 AM",
    business_id: business12.id
)



business13 = Business.create!(
    name: "Daikokuya",
    address: "1231 4th Street",
    city: "Los Angeles",
    state: "CA",
    b_zip_code: 90020,
    phone_num: "(213) 575-9099",
    price_range: "$$",
    latitude: 34.049047,
    longitude: -118.252433,
    delivery: false,
    takeout: true,
    outdoor: false
)
file13_1= URI.open('https://welp-aa-seed.s3-us-west-1.amazonaws.com/business_pics2/daikokuya/daikokuya3.jpg')
file13_2= URI.open('https://welp-aa-seed.s3-us-west-1.amazonaws.com/business_pics2/daikokuya/daikokuya2.jpg')
file13_3= URI.open('https://welp-aa-seed.s3-us-west-1.amazonaws.com/business_pics2/daikokuya/daikokuya1.jpg')
file13_4= URI.open('https://welp-aa-seed.s3-us-west-1.amazonaws.com/business_pics2/daikokuya/daikokuya4.jpg')
business13.photos.attach(io: file13_1, filename: "daikokuya1.jpg")
business13.photos.attach(io: file13_2, filename: "daikokuya2.jpg")
business13.photos.attach(io: file13_3, filename: "daikokuya3.jpg")
business13.photos.attach(io: file13_4, filename: "daikokuya4.jpg")
review13a = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 5,
    user_id: user1.id,
    business_id: business13.id
)
review13b = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 5,
    user_id: user2.id,
    business_id: business13.id
)
review13c = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 4,
    user_id: user3.id,
    business_id: business13.id
)
review13d = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 5,
    user_id: user4.id,
    business_id: business13.id
)
review13e = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 3,
    user_id: user5.id,
    business_id: business13.id
)
review13f = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 4,
    user_id: user6.id,
    business_id: business13.id
)
review13g = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 5,
    user_id: demo_user.id,
    business_id: business13.id
)

schedule13m = Schedule.create!(
    day: 'Mon',
    open: "11:00 AM",
    close: "8:00 PM",
    business_id: business13.id
)
schedule13t = Schedule.create!(
    day: 'Tue',
    open: "11:00 AM",
    close: "8:00 PM",
    business_id: business13.id
)
schedule13w = Schedule.create!(
    day: 'Wed',
    open: "11:00 AM",
    close: "8:00 PM",
    business_id: business13.id
)
schedule13th = Schedule.create!(
    day: 'Thu',
    open: "11:00 AM",
    close: "8:00 PM",
    business_id: business13.id
)
schedule13f = Schedule.create!(
    day: 'Fri',
    open: "11:00 AM",
    close: "8:00 PM",
    business_id: business13.id
)
schedule13s = Schedule.create!(
    day: 'Sat',
    open: "11:00 AM",
    close: "8:00 PM",
    business_id: business13.id
)
schedule13ss = Schedule.create!(
    day: 'Sun',
    open: "11:00 AM",
    close: "8:00 PM",
    business_id: business13.id
)




business14 = Business.create!(
    name: "El Taurino",
    address: "100 Hoover Way",
    city: "Los Angeles",
    state: "CA",
    b_zip_code: 900021,
    phone_num: "(213) 324-9865",
    price_range: "$",
    latitude: 34.042258,
    longitude: -118.250249,
    delivery: false,
    takeout: true,
    outdoor: true
)
file14_1= URI.open('https://welp-aa-seed.s3-us-west-1.amazonaws.com/business_pics2/el_taurino/el_taurino4.jpg')
file14_2= URI.open('https://welp-aa-seed.s3-us-west-1.amazonaws.com/business_pics2/el_taurino/el_taurino2.jpg')
file14_3= URI.open('https://welp-aa-seed.s3-us-west-1.amazonaws.com/business_pics2/el_taurino/el_taurino3.jpg')
file14_4= URI.open('https://welp-aa-seed.s3-us-west-1.amazonaws.com/business_pics2/el_taurino/el_taurino1.jpg')
business14.photos.attach(io: file14_1, filename: "el_taurino1.jpg")
business14.photos.attach(io: file14_2, filename: "el_taurino2.jpg")
business14.photos.attach(io: file14_3, filename: "el_taurino3.jpg")
business14.photos.attach(io: file14_4, filename: "el_taurino4.jpg")
review14a = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 5,
    user_id: user1.id,
    business_id: business14.id
)
review14b = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 3,
    user_id: user2.id,
    business_id: business14.id
)
review14c = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 4,
    user_id: user3.id,
    business_id: business14.id
)
review14d = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 5,
    user_id: user4.id,
    business_id: business14.id
)
review14e = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 4,
    user_id: user5.id,
    business_id: business14.id
)
review14f = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 5,
    user_id: user6.id,
    business_id: business14.id
)
review14g = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 4,
    user_id: demo_user.id,
    business_id: business14.id
)

schedule14m = Schedule.create!(
    day: 'Mon',
    open: "11:00 AM",
    close: "1:00 AM",
    business_id: business14.id
)
schedule14t = Schedule.create!(
    day: 'Tue',
    open: "11:00 AM",
    close: "1:00 AM",
    business_id: business14.id
)
schedule14w = Schedule.create!(
    day: 'Wed',
    open: "11:00 AM",
    close: "1:00 AM",
    business_id: business14.id
)
schedule14th = Schedule.create!(
    day: 'Thu',
    open: "11:00 AM",
    close: "1:00 AM",
    business_id: business14.id
)
schedule14f = Schedule.create!(
    day: 'Fri',
    open: "11:00 AM",
    close: "3:00 AM",
    business_id: business14.id
)
schedule14s = Schedule.create!(
    day: 'Sat',
    open: "11:00 AM",
    close: "3:00 AM",
    business_id: business14.id
)
schedule14ss = Schedule.create!(
    day: 'Sun',
    open: "11:00 AM",
    close: "1:00 AM",
    business_id: business14.id
)




business15 = Business.create!(
    name: "Jangmojip",
    address: "1210 Wilshire Blvd.",
    city: "Los Angeles",
    state: "CA",
    b_zip_code: 90005,
    phone_num: "(213) 787-0000",
    price_range: "$",
    latitude: 34.042621,
    longitude: -118.251811,
    delivery: true,
    takeout: true,
    outdoor: true
)
file15_1= URI.open('https://welp-aa-seed.s3-us-west-1.amazonaws.com/business_pics2/jangmojip/jangmojip4.jpg')
file15_2= URI.open('https://welp-aa-seed.s3-us-west-1.amazonaws.com/business_pics2/jangmojip/jangmojip2.jpg')
file15_3= URI.open('https://welp-aa-seed.s3-us-west-1.amazonaws.com/business_pics2/jangmojip/jangmojip3.jpg')
file15_4= URI.open('https://welp-aa-seed.s3-us-west-1.amazonaws.com/business_pics2/jangmojip/jangmojip1.jpg')
business15.photos.attach(io: file15_1, filename: "jangmojip1.jpg")
business15.photos.attach(io: file15_2, filename: "jangmojip2.jpg")
business15.photos.attach(io: file15_3, filename: "jangmojip3.jpg")
business15.photos.attach(io: file15_4, filename: "jangmojip4.jpg")
review15a = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 4,
    user_id: user1.id,
    business_id: business15.id
)
review15b = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 4,
    user_id: user2.id,
    business_id: business15.id
)
review15c = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 4,
    user_id: user3.id,
    business_id: business15.id
)
review15d = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 5,
    user_id: user4.id,
    business_id: business15.id
)
review15e = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 4,
    user_id: user5.id,
    business_id: business15.id
)
review15f = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 5,
    user_id: user6.id,
    business_id: business15.id
)
review15g = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 4,
    user_id: demo_user.id,
    business_id: business15.id
)

schedule15m = Schedule.create!(
    day: 'Mon',
    open: "11:30 AM",
    close: "9:00 PM",
    business_id: business15.id
)
schedule15t = Schedule.create!(
    day: 'Tue',
    open: "11:30 AM",
    close: "9:00 PM",
    business_id: business15.id
)
schedule15w = Schedule.create!(
    day: 'Wed',
    open: "11:30 AM",
    close: "9:00 PM",
    business_id: business15.id
)
schedule15th = Schedule.create!(
    day: 'Thu',
    open: "11:30 AM",
    close: "9:00 PM",
    business_id: business15.id
)
schedule15f = Schedule.create!(
    day: 'Fri',
    open: "11:30 AM",
    close: "9:00 PM",
    business_id: business15.id
)
schedule15s = Schedule.create!(
    day: 'Sat',
    open: "11:30 AM",
    close: "9:00 PM",
    business_id: business15.id
)
schedule15ss = Schedule.create!(
    day: 'Sun',
    open: "11:30 AM",
    close: "9:00 PM",
    business_id: business15.id
)




business16 = Business.create!(
    name: "King Taco",
    address: "1299 W. Pico Blvd.",
    city: "Los Angeles",
    state: "CA",
    b_zip_code: 90010,
    phone_num: "(213) 767-0010",
    price_range: "$",
    latitude: 34.046399,
    longitude: -118.257745,
    delivery: true,
    takeout: true,
    outdoor: true
)
file16_1= URI.open('https://welp-aa-seed.s3-us-west-1.amazonaws.com/business_pics2/king_taco/king_taco1.jpg')
file16_2= URI.open('https://welp-aa-seed.s3-us-west-1.amazonaws.com/business_pics2/king_taco/king_taco2.jpg')
file16_3= URI.open('https://welp-aa-seed.s3-us-west-1.amazonaws.com/business_pics2/king_taco/king_taco3.jpg')
file16_4= URI.open('https://welp-aa-seed.s3-us-west-1.amazonaws.com/business_pics2/king_taco/king_taco4.jpg')
business16.photos.attach(io: file16_1, filename: "king_taco1.jpg")
business16.photos.attach(io: file16_2, filename: "king_taco2.jpg")
business16.photos.attach(io: file16_3, filename: "king_taco3.jpg")
business16.photos.attach(io: file16_4, filename: "king_taco4.jpg")
review16a = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 3,
    user_id: user1.id,
    business_id: business16.id
)
review16b = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 4,
    user_id: user2.id,
    business_id: business16.id
)
review16c = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 3,
    user_id: user3.id,
    business_id: business16.id
)
review16d = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 4,
    user_id: user4.id,
    business_id: business16.id
)
review16e = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 2,
    user_id: user5.id,
    business_id: business16.id
)
review16f = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 5,
    user_id: user6.id,
    business_id: business16.id
)
review16g = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 3,
    user_id: demo_user.id,
    business_id: business16.id
)

schedule16m = Schedule.create!(
    day: 'Mon',
    open: "11:00 AM",
    close: "1:00 AM",
    business_id: business16.id
)
schedule16t = Schedule.create!(
    day: 'Tue',
    open: "11:00 AM",
    close: "1:00 AM",
    business_id: business16.id
)
schedule16w = Schedule.create!(
    day: 'Wed',
    open: "11:00 AM",
    close: "1:00 AM",
    business_id: business16.id
)
schedule16th = Schedule.create!(
    day: 'Thu',
    open: "11:00 AM",
    close: "1:00 AM",
    business_id: business16.id
)
schedule16f = Schedule.create!(
    day: 'Fri',
    open: "11:00 AM",
    close: "3:00 AM",
    business_id: business16.id
)
schedule16s = Schedule.create!(
    day: 'Sat',
    open: "11:00 AM",
    close: "3:00 AM",
    business_id: business16.id
)
schedule16ss = Schedule.create!(
    day: 'Sun',
    open: "11:00 AM",
    close: "1:00 AM",
    business_id: business16.id
)




business17 = Business.create!(
    name: "Mastro's Steakhouse",
    address: "102 Rodeo Drive",
    city: "Los Angeles",
    state: "CA",
    b_zip_code: 90001,
    phone_num: "(213) 653-0742",
    price_range: "$$$$",
    latitude: 34.042414,
    longitude: -118.265864,
    delivery: false,
    takeout: true,
    outdoor: true
)
file17_1= URI.open('https://welp-aa-seed.s3-us-west-1.amazonaws.com/business_pics2/mastros/mastros2.jpg')
file17_2= URI.open('https://welp-aa-seed.s3-us-west-1.amazonaws.com/business_pics2/mastros/mastros1.jpg')
file17_3= URI.open('https://welp-aa-seed.s3-us-west-1.amazonaws.com/business_pics2/mastros/mastros3.jpg')
file17_4= URI.open('https://welp-aa-seed.s3-us-west-1.amazonaws.com/business_pics2/mastros/mastros4.jpg')
business17.photos.attach(io: file17_1, filename: "mastros1.jpg")
business17.photos.attach(io: file17_2, filename: "mastros2.jpg")
business17.photos.attach(io: file17_3, filename: "mastros3.jpg")
business17.photos.attach(io: file17_4, filename: "mastros4.jpg")
review17a = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 5,
    user_id: user1.id,
    business_id: business17.id
)
review17b = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 5,
    user_id: user2.id,
    business_id: business17.id
)
review17c = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 4,
    user_id: user3.id,
    business_id: business17.id
)
review17d = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 5,
    user_id: user4.id,
    business_id: business17.id
)
review17e = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 5,
    user_id: user5.id,
    business_id: business17.id
)
review17f = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 5,
    user_id: user6.id,
    business_id: business17.id
)
review17g = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 5,
    user_id: demo_user.id,
    business_id: business17.id
)

schedule17m = Schedule.create!(
    day: 'Mon',
    open: "11:30 AM",
    close: "11:00 PM",
    business_id: business17.id
)
schedule17t = Schedule.create!(
    day: 'Tue',
    open: "11:30 AM",
    close: "11:00 PM",
    business_id: business17.id
)
schedule17w = Schedule.create!(
    day: 'Wed',
    open: "11:30 AM",
    close: "11:00 PM",
    business_id: business17.id
)
schedule17th = Schedule.create!(
    day: 'Thu',
    open: "11:30 AM",
    close: "11:00 PM",
    business_id: business17.id
)
schedule17f = Schedule.create!(
    day: 'Fri',
    open: "11:30 AM",
    close: "11:00 PM",
    business_id: business17.id
)
schedule17s = Schedule.create!(
    day: 'Sat',
    open: "11:30 AM",
    close: "11:00 PM",
    business_id: business17.id
)
schedule17ss = Schedule.create!(
    day: 'Sun',
    open: "11:30 AM",
    close: "11:00 PM",
    business_id: business17.id
)




business18 = Business.create!(
    name: "Sake To Me",
    address: "121 Alexandria Way",
    city: "Los Angeles",
    state: "CA",
    b_zip_code: 90012,
    phone_num: "(213) 123-1212",
    price_range: "$$",
    latitude: 34.058029,
    longitude: -118.295180,
    delivery: true,
    takeout: true,
    outdoor: true
)
file18_1= URI.open('https://welp-aa-seed.s3-us-west-1.amazonaws.com/business_pics2/sake_to_me/sake_to_me1.jpg')
file18_2= URI.open('https://welp-aa-seed.s3-us-west-1.amazonaws.com/business_pics2/sake_to_me/sake_to_me2.jpg')
file18_3= URI.open('https://welp-aa-seed.s3-us-west-1.amazonaws.com/business_pics2/sake_to_me/sake_to_me3.jpg')
file18_4= URI.open('https://welp-aa-seed.s3-us-west-1.amazonaws.com/business_pics2/sake_to_me/sake_to_me4.jpg')
business18.photos.attach(io: file18_1, filename: "sake_to_me1.jpg")
business18.photos.attach(io: file18_2, filename: "sake_to_me2.jpg")
business18.photos.attach(io: file18_3, filename: "sake_to_me3.jpg")
business18.photos.attach(io: file18_4, filename: "sake_to_me4.jpg")
review18a = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 4,
    user_id: user1.id,
    business_id: business18.id
)
review18b = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 5,
    user_id: user2.id,
    business_id: business18.id
)
review18c = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 5,
    user_id: user3.id,
    business_id: business18.id
)
review18d = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 4,
    user_id: user4.id,
    business_id: business18.id
)
review18e = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 3,
    user_id: user5.id,
    business_id: business18.id
)
review18f = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 5,
    user_id: user6.id,
    business_id: business18.id
)
review18g = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 4,
    user_id: demo_user.id,
    business_id: business18.id
)

schedule18m = Schedule.create!(
    day: 'Mon',
    open: "11:00 AM",
    close: "10:00 PM",
    business_id: business18.id
)
schedule18t = Schedule.create!(
    day: 'Tue',
    open: "11:00 AM",
    close: "10:00 PM",
    business_id: business18.id
)
schedule18w = Schedule.create!(
    day: 'Wed',
    open: "11:00 AM",
    close: "10:00 PM",
    business_id: business18.id
)
schedule18th = Schedule.create!(
    day: 'Thu',
    open: "11:00 AM",
    close: "10:00 PM",
    business_id: business18.id
)
schedule18f = Schedule.create!(
    day: 'Fri',
    open: "11:00 AM",
    close: "11:00 PM",
    business_id: business18.id
)
schedule18s = Schedule.create!(
    day: 'Sat',
    open: "11:00 AM",
    close: "11:00 PM",
    business_id: business18.id
)
schedule18ss = Schedule.create!(
    day: 'Sun',
    open: "11:00 AM",
    close: "10:00 PM",
    business_id: business18.id
)




business19 = Business.create!(
    name: "Seoul Gamjatang",
    address: "200 6th Street",
    city: "Los Angeles",
    state: "CA",
    b_zip_code: 90007,
    phone_num: "(213) 755-1277",
    price_range: "$$",
    latitude: 34.052557,
    longitude: -118.305616,
    delivery: true,
    takeout: true,
    outdoor: true
)
file19_1= URI.open('https://welp-aa-seed.s3-us-west-1.amazonaws.com/business_pics2/seoul_gamjatang/seoul_gamjatang1.jpg')
file19_2= URI.open('https://welp-aa-seed.s3-us-west-1.amazonaws.com/business_pics2/seoul_gamjatang/seoul_gamjatang2.jpg')
file19_3= URI.open('https://welp-aa-seed.s3-us-west-1.amazonaws.com/business_pics2/seoul_gamjatang/seoul_gamjatang3.jpg')
file19_4= URI.open('https://welp-aa-seed.s3-us-west-1.amazonaws.com/business_pics2/seoul_gamjatang/seoul_gamjatang4.jpg')
business19.photos.attach(io: file19_1, filename: "seoul_gamjatang1.jpg")
business19.photos.attach(io: file19_2, filename: "seoul_gamjatang2.jpg")
business19.photos.attach(io: file19_3, filename: "seoul_gamjatang3.jpg")
business19.photos.attach(io: file19_4, filename: "seoul_gamjatang4.jpg")
review19a = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 5,
    user_id: user1.id,
    business_id: business19.id
)
review19b = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 4,
    user_id: user2.id,
    business_id: business19.id
)
review19c = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 3,
    user_id: user3.id,
    business_id: business19.id
)
review19d = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 5,
    user_id: user4.id,
    business_id: business19.id
)
review19e = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 1,
    user_id: user5.id,
    business_id: business19.id
)
review19f = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 5,
    user_id: user6.id,
    business_id: business19.id
)
review19g = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 4,
    user_id: demo_user.id,
    business_id: business19.id
)

schedule19m = Schedule.create!(
    day: 'Mon',
    open: "11:00 AM",
    close: "9:30 PM",
    business_id: business19.id
)
schedule19t = Schedule.create!(
    day: 'Tue',
    open: "11:00 AM",
    close: "9:30 PM",
    business_id: business19.id
)
schedule19w = Schedule.create!(
    day: 'Wed',
    open: "11:00 AM",
    close: "9:30 PM",
    business_id: business19.id
)
schedule19th = Schedule.create!(
    day: 'Thu',
    open: "11:00 AM",
    close: "9:30 PM",
    business_id: business19.id
)
schedule19f = Schedule.create!(
    day: 'Fri',
    open: "11:00 AM",
    close: "9:30 PM",
    business_id: business19.id
)
schedule19s = Schedule.create!(
    day: 'Sat',
    open: "11:00 AM",
    close: "9:30 PM",
    business_id: business19.id
)
schedule19ss = Schedule.create!(
    day: 'Sun',
    open: "11:00 AM",
    close: "9:30 PM",
    business_id: business19.id
)





business20 = Business.create!(
    name: "Sugarfish Sushi",
    address: "203 Rodeo Drive",
    city: "Los Angeles",
    state: "CA",
    b_zip_code: 90016,
    phone_num: "(213) 555-1758",
    price_range: "$$$",
    latitude: 34.050628,
    longitude: -118.247337,
    delivery: false,
    takeout: true,
    outdoor: true
)
file20_1= URI.open('https://welp-aa-seed.s3-us-west-1.amazonaws.com/business_pics2/sugarfish/sugarfish1.jpg')
file20_2= URI.open('https://welp-aa-seed.s3-us-west-1.amazonaws.com/business_pics2/sugarfish/sugarfish2.jpg')
file20_3= URI.open('https://welp-aa-seed.s3-us-west-1.amazonaws.com/business_pics2/sugarfish/sugarfish3.jpg')
file20_4= URI.open('https://welp-aa-seed.s3-us-west-1.amazonaws.com/business_pics2/sugarfish/sugarfish4.jpg')
business20.photos.attach(io: file20_1, filename: "sugarfish1.jpg")
business20.photos.attach(io: file20_2, filename: "sugarfish2.jpg")
business20.photos.attach(io: file20_3, filename: "sugarfish3.jpg")
business20.photos.attach(io: file20_4, filename: "sugarfish4.jpg")
review20a = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 5,
    user_id: user1.id,
    business_id: business20.id
)
review20b = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 5,
    user_id: user2.id,
    business_id: business20.id
)
review20c = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 5,
    user_id: user3.id,
    business_id: business20.id
)
review20d = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 5,
    user_id: user4.id,
    business_id: business20.id
)
review20e = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 2,
    user_id: user5.id,
    business_id: business20.id
)
review20f = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 5,
    user_id: user6.id,
    business_id: business20.id
)
review20g = Review.create!(
    message: "I've been to more than a few Taco trucks in North Hollywood and this one by far is my Favorite Go-To spot. The food always tastes fresh and the staff is very attentive. The asada is great and so is the al pastor do yourself a favor and spend the extra .25 cents to get the handmade tortillas. Tacos are 1.25 regular or 1.50 for handmade tortillas. Recently they've been giving away a free fresh of either Horcharta, Jamaica or Strawberry juice with every purchase. They are happy to give you grilled jalapeños or onions upon request and with every order they give you a tostada with beans . This truck is open til 3am so it's a great after club spot to grab a bite. When you stop by please make sure to tip the staff they are awesome and seriously go above and beyond. Beware that there is another taco truck nearby that really isn't anywhere near as good",
    rating: 5,
    user_id: demo_user.id,
    business_id: business20.id
)

schedule20m = Schedule.create!(
    day: 'Mon',
    open: "11:00 AM",
    close: "8:30 PM",
    business_id: business20.id
)
schedule20t = Schedule.create!(
    day: 'Tue',
    open: "11:00 AM",
    close: "8:30 PM",
    business_id: business20.id
)
schedule20w = Schedule.create!(
    day: 'Wed',
    open: "11:00 AM",
    close: "8:30 PM",
    business_id: business20.id
)
schedule20th = Schedule.create!(
    day: 'Thu',
    open: "11:00 AM",
    close: "8:30 PM",
    business_id: business20.id
)
schedule20f = Schedule.create!(
    day: 'Fri',
    open: "11:00 AM",
    close: "8:30 PM",
    business_id: business20.id
)
schedule20s = Schedule.create!(
    day: 'Sat',
    open: "11:00 AM",
    close: "8:30 PM",
    business_id: business20.id
)
schedule20ss = Schedule.create!(
    day: 'Sun',
    open: "11:00 AM",
    close: "8:30 PM",
    business_id: business20.id
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

b_c31 = BusinessesCategory.create!(business_id: business11.id, category_id: category1.id)
b_c32 = BusinessesCategory.create!(business_id: business11.id, category_id: category6.id)
b_c33 = BusinessesCategory.create!(business_id: business11.id, category_id: category7.id)

b_c34 = BusinessesCategory.create!(business_id: business12.id, category_id: category3.id)
b_c35 = BusinessesCategory.create!(business_id: business12.id, category_id: category6.id)
b_c36 = BusinessesCategory.create!(business_id: business12.id, category_id: category9.id)

b_c37 = BusinessesCategory.create!(business_id: business13.id, category_id: category5.id)
b_c38 = BusinessesCategory.create!(business_id: business13.id, category_id: category6.id)
b_c39 = BusinessesCategory.create!(business_id: business13.id, category_id: category8.id)

b_c40 = BusinessesCategory.create!(business_id: business14.id, category_id: category1.id)
b_c41 = BusinessesCategory.create!(business_id: business14.id, category_id: category6.id)
b_c42 = BusinessesCategory.create!(business_id: business14.id, category_id: category7.id)

b_c43 = BusinessesCategory.create!(business_id: business15.id, category_id: category4.id)
b_c44 = BusinessesCategory.create!(business_id: business15.id, category_id: category5.id)
b_c45 = BusinessesCategory.create!(business_id: business15.id, category_id: category9.id)

b_c46 = BusinessesCategory.create!(business_id: business16.id, category_id: category1.id)
b_c47 = BusinessesCategory.create!(business_id: business16.id, category_id: category5.id)
b_c48 = BusinessesCategory.create!(business_id: business16.id, category_id: category7.id)

b_c49 = BusinessesCategory.create!(business_id: business17.id, category_id: category5.id)
b_c50 = BusinessesCategory.create!(business_id: business17.id, category_id: category6.id)
b_c51 = BusinessesCategory.create!(business_id: business17.id, category_id: category10.id)

b_c52 = BusinessesCategory.create!(business_id: business18.id, category_id: category2.id)
b_c53 = BusinessesCategory.create!(business_id: business18.id, category_id: category5.id)
b_c54 = BusinessesCategory.create!(business_id: business18.id, category_id: category8.id)

b_c55 = BusinessesCategory.create!(business_id: business19.id, category_id: category5.id)
b_c56 = BusinessesCategory.create!(business_id: business19.id, category_id: category6.id)
b_c57 = BusinessesCategory.create!(business_id: business19.id, category_id: category9.id)

b_c58 = BusinessesCategory.create!(business_id: business20.id, category_id: category2.id)
b_c59 = BusinessesCategory.create!(business_id: business20.id, category_id: category5.id)
b_c60 = BusinessesCategory.create!(business_id: business20.id, category_id: category8.id)



