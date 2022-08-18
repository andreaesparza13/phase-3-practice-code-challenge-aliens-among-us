puts "seeding..."

a1 = Alien.create(name:"Morp", earth_disguise_name: "Mose", home_planet: "Morbius", light_years_to_home_planet: 52)
a2 = Alien.create(name:"Peep", earth_disguise_name: "Peter", home_planet: "Ponzia", light_years_to_home_planet: 999)
a3 = Alien.create(name:"Kofer", earth_disguise_name: "Kyle", home_planet: "Kree", light_years_to_home_planet: 71)

e1 = Earthling.create(first_name: "Maureen", last_name: "Burns", job: "Accountant")
e2 = Earthling.create(first_name: "Jesus", last_name: "Christ", job: "Saviour")
e3 = Earthling.create(first_name: "Elmer", last_name: "Fudd", job: "Pest")

v1 = Visitation.create(date: Time.now, alien_id: a1.id, earthling_id: e2.id)
v2 = Visitation.create(date: Time.now, alien_id: a1.id, earthling_id: e3.id)
v3 = Visitation.create(date: Time.now, alien_id: a1.id, earthling_id: e1.id)
v4 = Visitation.create(date: Time.now, alien_id: a3.id, earthling_id: e2.id)
v5 = Visitation.create(date: Time.now, alien_id: a2.id, earthling_id: e3.id)
v6 = Visitation.create(date: Time.now, alien_id: a3.id, earthling_id: e2.id)

puts "...done"