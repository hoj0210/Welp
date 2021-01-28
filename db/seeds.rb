# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Business.destroy_all
BusinessesCategory.destroy_all

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

business4 = Business.create!(
    name: "Taco Maggie",
    address: "111 Beach Blvd.",
    city: "Buena Park",
    state: "CA",
    b_zip_code: 90621,
    phone_num: "714-123-4444",
    price_range: "$",
    longitude: 100.2113,
    latitude: 89.1234
)

business4.photos.attach(io: File.open('/Users/hojungcha/Desktop/business_pics/taco_maggie/taco_maggie1.jpg'), filename: "taco_maggie1.jpg")
business4.photos.attach(io: File.open('/Users/hojungcha/Desktop/business_pics/taco_maggie/taco_maggie2.jpg'), filename: "taco_maggie2.jpg")
business4.photos.attach(io: File.open('/Users/hojungcha/Desktop/business_pics/taco_maggie/taco_maggie3.jpg'), filename: "taco_maggie3.jpg")
business4.photos.attach(io: File.open('/Users/hojungcha/Desktop/business_pics/taco_maggie/taco_maggie4.jpg'), filename: "taco_maggie4.jpg")


business5 = Business.create!(
    name: "Blue Bottle Coffee",
    address: "3424 Fullerton Ave.",
    city: "Fullerton",
    state: "CA",
    b_zip_code: 90345,
    phone_num: "562-888-4444",
    price_range: "$",
    longitude: 203.2111,
    latitude: 169.1234
)

business5.photos.attach(io: File.open('/Users/hojungcha/Desktop/business_pics/blue_bottle/blue_bottle1.jpg'), filename: "blue_bottle1.jpg")
business5.photos.attach(io: File.open('/Users/hojungcha/Desktop/business_pics/blue_bottle/blue_bottle2.jpg'), filename: "blue_bottle2.jpg")
business5.photos.attach(io: File.open('/Users/hojungcha/Desktop/business_pics/blue_bottle/blue_bottle3.jpg'), filename: "blue_bottle3.jpg")
business5.photos.attach(io: File.open('/Users/hojungcha/Desktop/business_pics/blue_bottle/blue_bottle4.jpg'), filename: "blue_bottle4.jpg")

business6 = Business.create!(
    name: "In N Out",
    address: "2 Beach Blvd.",
    city: "Huntington Beach",
    state: "CA",
    b_zip_code: 92333,
    phone_num: "714-442-0000",
    price_range: "$",
    longitude: 20.2113,
    latitude: 80.1234
)

business6.photos.attach(io: File.open('/Users/hojungcha/Desktop/business_pics/innout/innout1.jpg'), filename: "innout1.jpg")
business6.photos.attach(io: File.open('/Users/hojungcha/Desktop/business_pics/innout/innout2.jpg'), filename: "innout2.jpg")
business6.photos.attach(io: File.open('/Users/hojungcha/Desktop/business_pics/innout/innout3.jpg'), filename: "innout3.jpg")
business6.photos.attach(io: File.open('/Users/hojungcha/Desktop/business_pics/innout/innout4.jpg'), filename: "innout4.jpg")

business7 = Business.create!(
    name: "Off Street Cafe",
    address: "3087 Bellflower Blvd.",
    city: "Bellflower",
    state: "CA",
    b_zip_code: 90989,
    phone_num: "562-080-2231",
    price_range: "$$",
    longitude: 135.233,
    latitude: 33.1345
)

business7.photos.attach(io: File.open('/Users/hojungcha/Desktop/business_pics/off_street/off_street1.jpg'), filename: "off_street1.jpg")
business7.photos.attach(io: File.open('/Users/hojungcha/Desktop/business_pics/off_street/off_street2.jpg'), filename: "off_street2.jpg")
business7.photos.attach(io: File.open('/Users/hojungcha/Desktop/business_pics/off_street/off_street3.jpg'), filename: "off_street3.jpg")
business7.photos.attach(io: File.open('/Users/hojungcha/Desktop/business_pics/off_street/off_street4.jpg'), filename: "off_street4.jpg")

business8 = Business.create!(
    name: "Ozen Sushi",
    address: "22 183rd St.",
    city: "Cerritos",
    state: "CA",
    b_zip_code: 90331,
    phone_num: "562-202-3030",
    price_range: "$$",
    longitude: 175.2113,
    latitude: 121.1234
)

business8.photos.attach(io: File.open('/Users/hojungcha/Desktop/business_pics/ozen/ozen1.jpg'), filename: "ozen1.jpg")
business8.photos.attach(io: File.open('/Users/hojungcha/Desktop/business_pics/ozen/ozen2.jpg'), filename: "ozen2.jpg")
business8.photos.attach(io: File.open('/Users/hojungcha/Desktop/business_pics/ozen/ozen3.jpg'), filename: "ozen3.jpg")
business8.photos.attach(io: File.open('/Users/hojungcha/Desktop/business_pics/ozen/ozen4.jpg'), filename: "ozen4.jpg")

business9 = Business.create!(
    name: "Chodang",
    address: "659 Artesia Blvd.",
    city: "Cerritos",
    state: "CA",
    b_zip_code: 90777,
    phone_num: "562-444-1111",
    price_range: "$$",
    longitude: 160.2345,
    latitude: 189.6734
)

business9.photos.attach(io: File.open('/Users/hojungcha/Desktop/business_pics/chodang/chodang1.jpg'), filename: "chodang1.jpg")
business9.photos.attach(io: File.open('/Users/hojungcha/Desktop/business_pics/chodang/chodang2.jpg'), filename: "chodang2.jpg")
business9.photos.attach(io: File.open('/Users/hojungcha/Desktop/business_pics/chodang/chodang3.jpg'), filename: "chodang3.jpg")
business9.photos.attach(io: File.open('/Users/hojungcha/Desktop/business_pics/chodang/chodang4.jpg'), filename: "chodang4.jpg")

business10 = Business.create!(
    name: "Phils BBQ",
    address: "1123 South St.",
    city: "Cerritos",
    state: "CA",
    b_zip_code: 92000,
    phone_num: "562-098-2534",
    price_range: "$$",
    longitude: 300.2345,
    latitude: 119.6734
)

business10.photos.attach(io: File.open('/Users/hojungcha/Desktop/business_pics/phils/phils1.jpg'), filename: "phils1.jpg")
business10.photos.attach(io: File.open('/Users/hojungcha/Desktop/business_pics/phils/phils2.jpg'), filename: "phils2.jpg")
business10.photos.attach(io: File.open('/Users/hojungcha/Desktop/business_pics/phils/phils3.jpg'), filename: "phils3.jpg")
business10.photos.attach(io: File.open('/Users/hojungcha/Desktop/business_pics/phils/phils4.jpg'), filename: "phils4.jpg")

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



