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
    email: 'jenny@geemail.com', 
    phone_number: '+12064746674',
    image: 'https://scontent-lga3-1.xx.fbcdn.net/v/t31.0-8/16252402_10100427937247180_4377359445822303300_o.jpg?_nc_cat=110&_nc_oc=AQlF5C7-iWauq-GISrOqwLz5iedKXB0GPBwoICFJQIF4PIPJCQzFfm388KjCNqTOgag&_nc_ht=scontent-lga3-1.xx&oh=6112b0a36dce9a8db2585f4a9e9094cf&oe=5DDCF433', 
)

ginny = User.create(
    first_name: 'Ginny', 
    last_name: 'Chou', 
    email: 'notynney@geemail.com', 
    phone_number: '+12064746674',
    image: 'https://scontent-lga3-1.xx.fbcdn.net/v/t31.0-8/16252402_10100427937247180_4377359445822303300_o.jpg?_nc_cat=110&_nc_oc=AQlF5C7-iWauq-GISrOqwLz5iedKXB0GPBwoICFJQIF4PIPJCQzFfm388KjCNqTOgag&_nc_ht=scontent-lga3-1.xx&oh=6112b0a36dce9a8db2585f4a9e9094cf&oe=5DDCF433', 
)

f1 = Relationship.create(
    first_name: 'Aidi',
    last_name: 'Rivera',
    email: 'r.aidi@gmail.com',
    phone_number: '+12067896789',
    image: 'https://scontent-lga3-1.xx.fbcdn.net/v/t1.0-9/12274592_1150260185002500_8663542552834122806_n.jpg?_nc_cat=100&_nc_oc=AQkx7PilmoU4kCI19esv6g8vFQ-5WyIcOke4DNeDSh8mtNa8HVNCQxYhYkqNYn6rXow&_nc_ht=scontent-lga3-1.xx&oh=304c7dd4a0ca114f4bce46dd5ed315ef&oe=5DD0CC55',
    relationship_type: 'significant other',
    contact_frequency: 7,
    user_id: 1
)

f2 = Relationship.create(
    first_name: 'Fabian',
    last_name: 'Fabro',
    email: 'f.fabro@gmail.com',
    phone_number: '+12061230987',
    image: 'https://scontent-lga3-1.xx.fbcdn.net/v/t31.0-8/14976788_10154116883936365_5497699653912126450_o.jpg?_nc_cat=105&_nc_oc=AQk9yHaEL7B-3QoizmKDUCD2LIY5UYRv1ZWfoH_AVUJzfuc2nkVg9vuCZ0ra3JT1TVM&_nc_ht=scontent-lga3-1.xx&oh=0cef5bbac1297f3b6b3a987731a5b4c3&oe=5DCC932F',
    relationship_type: 'friend',
    contact_frequency: 12,
    user_id: 1
)

f3 = Relationship.create(
    first_name: 'Yuwi',
    last_name: 'Shaw',
    email: 'yuwi@gmail.com',
    phone_number: '+19172309481',
    image: 'https://scontent-lga3-1.xx.fbcdn.net/v/t31.0-8/14102960_10157291221115335_7082657354163661497_o.jpg?_nc_cat=110&_nc_oc=AQlLSvwmdZmiivQPaRo6dwdg6oI8CmBFvwPQcIFQH_5p4xoBfInd6UfaYikqyKJdr9s&_nc_ht=scontent-lga3-1.xx&oh=3c23b7327e9c13dbb51871895524feba&oe=5DD42DA4',
    relationship_type: 'sibling',
    contact_frequency: 30,
    user_id: 1
)

f4 = Relationship.create(
    first_name: 'TJ',
    last_name: 'Tong',
    email: 'tjt@gmail.com',
    phone_number: '+12067839485',
    image: 'https://scontent-sea1-1.xx.fbcdn.net/v/t1.0-9/67713923_10156483508274033_5899926579433177088_o.jpg?_nc_cat=110&_nc_oc=AQm_SPrjfUSIfnaLB5BlCdGmrLdyXrh3d8tQHxbUN5ujh2U0M77pW8hrZbqoWtH4SWY&_nc_ht=scontent-sea1-1.xx&oh=2df100a76a13bed3db92129b0f297197&oe=5DCAFA96',
    relationship_type: 'friend',
    contact_frequency: 60,
    user_id: 1
)

f5 = Relationship.create(
    first_name: 'Serena',
    last_name: 'Pomerantz',
    email: 'serenap@gmail.com',
    phone_number: '+19178374019',
    image: 'https://scontent-sea1-1.xx.fbcdn.net/v/t1.0-9/66073775_10100151325734356_6206785281014628352_o.jpg?_nc_cat=100&_nc_oc=AQnHWfkwT6lmFdSgph_5do0VjqMYqFxCXb3FljO9uwGfMbGztqz-umhn218aXVTIz4Q&_nc_ht=scontent-sea1-1.xx&oh=8a29b32b3e44b68c7672058545a5f089&oe=5E10EE94',
    relationship_type: 'friend',
    contact_frequency: 14,
    user_id: 1
)

e1 = Event.create(
    name: 'Food Truck Fest',
    start_date: '2019-08-13 16:00:00',
    end_date: '2019-08-13 2019 18:00:00',
    location: 'Seattle',
    description: "It's gonna be dope.",
    user_id: 1
)

e2 = Event.create(
    name: 'Dinner and a Movie',
    start_date: '2019-08-23 11:00:00',
    end_date: '2019-08-23 12:00:00',
    location: 'Seattle',
    description: "It's gonna be romantic.",
    user_id: 1
)

e3 = Event.create(
    name: 'Street Fair',
    start_date: '2019-08-29 10:00:00',
    end_date: '2019-08-29 14:00:00',
    location: 'Seattle',
    description: "It's gonna be insane.",
    user_id: 1
)

e4 = Event.create(
    name: 'Musical',
    start_date: '2019-09-29 10:00:00',
    end_date: '2019-09-29 14:00:00',
    location: 'Chicago',
    description: "It's gonna be musical.",
    user_id: 1
)

e5 = Event.create(
    name: 'Dog Show',
    start_date: '2019-11-29 10:00:00',
    end_date: '2019-11-29 14:00:00',
    location: 'Kuala Lumpur',
    description: "It's gonna be insane.",
    user_id: 1
)


re1 = RelationshipEvent.create(
    relationship_id: 1, 
    event_id: 1
)

re2 = RelationshipEvent.create(
    relationship_id: 2, 
    event_id: 2
)

re3 = RelationshipEvent.create(
    relationship_id: 3, 
    event_id: 3
)

re4 = RelationshipEvent.create(
    relationship_id: 5, 
    event_id: 4
)
re3 = RelationshipEvent.create(
    relationship_id: 4, 
    event_id: 5
)
