# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Create dummy users
user1 = User.create(firstname: 'Julia', lastname: 'Roberts', password: 'jr@321', phonenumber: '0123456789', emailaddress: 'jr@shift.com', ismanager: true, isactive: true, created_at: Time.now, updated_at: Time.now)

user2 = User.create(firstname: 'Diana', lastname: 'Silvers', password: 'ds@123', phonenumber: '0076543210', emailaddress: 'ds@shift.com', ismanager: false, isactive: true, created_at: Time.now, updated_at: Time.now)

puts user1.inspect
puts user2.inspect

shifts = Shift.create([
    {userid: 1, starttime: 7 , endtime: 13, shiftlength: 6, storeid: 1, ispublic: true, created_at: Time.now, updated_at: Time.now},
    {userid: 2, starttime: 13 , endtime: 19, shiftlength: 6, storeid: 2, ispublic: true, created_at: Time.now, updated_at: Time.now},
    {userid: 3, starttime: 8 , endtime: 14, shiftlength: 6, storeid: 3, ispublic: false, created_at: Time.now, updated_at: Time.now}
])

puts shifts