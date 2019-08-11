# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

jenny = User.create(
    first_name: 'Jenny', 
    last_name: 'Shaw', 
    email: 'notynnej@geemail.com', 
    phone_number: '+12064746674',
    image: '', 
)

f1 = Relationship.create(
    first_name: 'Aidi',
    last_name: 'Rivera',
    email: 'r.aidi@gmail.com',
    phone_number: '+12067896789',
    image: '',
    relationship_type: 'significant other',
    contact_frequency: 7,
    user_id: 1
)

f2 = Relationship.create(
    first_name: 'Fabian',
    last_name: 'Fabro',
    email: 'f.fabro@gmail.com',
    phone_number: '+12061230987',
    image: '',
    relationship_type: 'friend',
    contact_frequency: 12,
    user_id: 1
)

f3 = Relationship.create(
    first_name: 'Yuwi',
    last_name: 'Shaw',
    email: 'yuwi@gmail.com',
    phone_number: '+19172309481',
    image: '',
    relationship_type: 'sibling',
    contact_frequency: 30,
    user_id: 1
)

e1 = Event.create(
    name: 'Food Truck Fest',
    start_date: 'Tue, 13 Aug 2019 16:00:00 -0700',
    end_date: 'Tue, 13 Aug 2019 18:00:00 -0700',
    location: 'Seattle',
    description: "It's gonna be dope.",
    user_id: 1
)

e2 = Event.create(
    name: 'Dinner and a Movie',
    start_date: 'Fri, 23 Aug 2019 11:00:00 -0700',
    end_date: 'Fri, 23 Aug 2019 12:00:00 -0700',
    location: 'Seattle',
    description: "It's gonna be romantic.",
    user_id: 1
)

e1 = Event.create(
    name: 'Street Fair',
    start_date: 'Thu, 29 Aug 2019 10:00:00 -0700',
    end_date: 'Thu, 29 Aug 2019 14:00:00 -0700',
    location: 'Seattle',
    description: "It's gonna be insane.",
    user_id: 1
)

re1 = RelationshipEvent.create(
    relationship_id: 2, 
    event_id: 1
)

re2 = RelationshipEvent.create(
    relationship_id: 1, 
    event_id: 2
)

re3 = RelationshipEvent.create(
    relationship_id: 2, 
    event_id: 3
)
