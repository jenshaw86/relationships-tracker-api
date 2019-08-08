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
    birthday: '05/21/1986'
)

f1 = Relationship.create(
    first_name: 'Aidi',
    last_name: 'Rivera',
    email: 'r.aidi@gmail.com',
    phone_number: '+12067896789',
    image: '',
    birthday: '08/13/1992',
    relationship_type: 'significant other',
    relationship_length: '3 years',
    relationship_description: 'We met in Taiwan',
    user_id: 1
)

f2 = Relationship.create(
    first_name: 'Fabian',
    last_name: 'Fabro',
    email: 'f.fabro@gmail.com',
    phone_number: '+12061230987',
    image: '',
    birthday: '02/26/1991',
    relationship_type: 'friend',
    relationship_length: '3 months',
    relationship_description: 'Flatiron classmate',
    user_id: 1
)

f3 = Relationship.create(
    first_name: 'Yuwi',
    last_name: 'Shaw',
    email: 'yuwi@gmail.com',
    phone_number: '+19172309481',
    image: '',
    birthday: '01/29/80',
    relationship_type: 'sibling',
    relationship_length: 'for life',
    relationship_description: 'She is family',
    user_id: 1
)

e1 = Event.create(
    name: 'Food Truck Fest',
    start_date: '08/13/2019',
    end_date: '08/13/2019',
    start_time: '1500',
    end_time: '1700',
    location: 'Seattle',
    description: "It's gonna be dope.",
    user_id: 1
)

e2 = Event.create(
    name: 'Dinner and a Movie',
    start_date: '08/23/2019',
    end_date: '08/23/2019',
    start_time: '1800',
    end_time: '2100',
    location: 'Seattle',
    description: "It's gonna be romantic.",
    user_id: 1
)

e1 = Event.create(
    name: 'Street Fair',
    start_date: '08/29/2019',
    end_date: '08/29/2019',
    start_time: '1200',
    end_time: '1400',
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
