require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Admin.destroy_all
Client.destroy_all

20.times do 

    Admin.create(
                 email: Faker::Internet.email,
                 name: Faker::Artist.name,
                 license: Faker::Educator.degree,
                 specialization: Faker::Educator.subject,
                 location: Faker::Games::Pokemon.location
                )
end

50.times do 

    Client.create(
                 email: Faker::Internet.email,
                 name: Faker::Games::ElderScrolls.name,
                 location: Faker::Games::ElderScrolls.region,
                 age: Faker::Date.birthday #age is date-of-birth
    )

end


20.times do
    ClientAdmin.create(
        client: Client.all.sample, 
        admin: Admin.all.sample
    )
end
