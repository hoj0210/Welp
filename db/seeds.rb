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

business1 = Business.create!(
    name: "Tacos El Gordo",
    address: "315 Cascade Way",
    city: "Cypress",
    state: "CA",
    b_zip_code: 90630,
    phone_num: "213-887-9090",
    price_range: "$",
    longitude: 64.543211,
    latitude: 56.43222,
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
    phone_num: "714-999-9090",
    price_range: "$$",
    longitude: 60.2113,
    latitude: 51.4555,
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
    phone_num: "714-111-1111",
    price_range: "$$",
    longitude: 80.2113,
    latitude: 49.1234,
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
    phone_num: "714-123-4444",
    price_range: "$",
    longitude: 100.2113,
    latitude: 89.1234,
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
    phone_num: "562-888-4444",
    price_range: "$",
    longitude: 203.2111,
    latitude: 169.1234,
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
    phone_num: "714-442-0000",
    price_range: "$",
    longitude: 20.2113,
    latitude: 80.1234,
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
    phone_num: "562-080-2231",
    price_range: "$$",
    longitude: 135.233,
    latitude: 33.1345,
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
    phone_num: "562-202-3030",
    price_range: "$$",
    longitude: 175.2113,
    latitude: 121.1234,
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
    phone_num: "562-444-1111",
    price_range: "$$",
    longitude: 160.2345,
    latitude: 189.6734,
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
    phone_num: "562-098-2534",
    price_range: "$$",
    longitude: 300.2345,
    latitude: 119.6734,
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



