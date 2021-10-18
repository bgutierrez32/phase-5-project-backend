# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
ServiceList.destroy_all
ShopService.destroy_all
CarLocation.destroy_all
Service.destroy_all
ServiceTag.destroy_all
Shop.destroy_all
Appointment.destroy_all
Location.destroy_all
Car.destroy_all
User.destroy_all


puts "start seeding ✅"

puts "User seeding"
 u1 = User.create(name: "Bryan Gutierrez", username: "BryanDaGoat", email: "BryanDaGoat@gmail.com", password: "DaBest", phone_number: "123-456-7890")

 puts "Car seeding"

 c1 = Car.create(year: 2011, make: "Honda", model: "Accord", insurance: true, user_id: u1.id)

 puts "Loction seeding"

 l1 = Location.create(state: "New York", city: "Brooklyn")
 l2 = Location.create(state: "Florida", city: "Orlando")
 l3 = Location.create(state: "New Jersey", city: "Trenton")
 l4 = Location.create(state: "Georgia", city: "Atlanta")
 l5 = Location.create(state: "North Carolina", city: "Charlotte")

 puts "User Location seeding"

 ul1 = UserLocation.create(user_id: u1.id, location_id: l2.id)

 puts "Car Location seeding"

 cl1 = CarLocation.create(car_id: c1.id, location_id: l2.id)

 puts "Shop seeding"

 shop1 = Shop.create(name: "Benny's Car Shop", address:"123 benny st, Brooklyn, NewYork", location_id: l1.id)
 shop2 = Shop.create(name: "Tim's Mech. Shop", address: "4567 timmy dr, Orlando, Florida", location_id: l2.id)

 puts "Appointment seeding"

 a1 = Appointment.create(car_id: c1.id, shop_id: shop2.id, total_price: 100, date: "2021-10-20 12:30:00")

 puts "Service seeding"

 s1 = Service.create(service_type: "Oil change")
 s2 = Service.create(service_type: "Tire change")
 s3 = Service.create(service_type: "Battery change")
 s4 = Service.create(service_type: "Collesion repair")

 puts "Service Tags seeding"

 t1 = ServiceTag.create(service_name: "Standard Maintenance Services", service_id: s1.id)

 puts "Service_list seeding"

 sl1 = ServiceList.create(appointment_id: a1.id, service_id: s1.id)

 puts "Shop_services seeding"

 ss1 = ShopService.create(service_id: s1, shop_id: shop2.id, price: 65)

puts "seeding done! ✅"