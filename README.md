# StayConneted
Note: This is the back end API of StayConnected. 

**StayConnected** helps you stay organized and actively connected with your personal network using its relationship and meetup management systems. 

This app allows you to create a list of connections that you want to keep track of. It can provide insight on each connection, such as when you last met up. It also allows you to customize settings so that you're reminded when it's time to make plans for your next meetup. 

The app also facilitates creating meetups for your connections. You can schedule new meetups and send your connections text invites to notify them about those meetups. You can also view what meetups are coming up in your schedule and keep a history of past meetups that you've already initiated.

# Getting Started
Download or clone this repository.

In the new directory, you will need to install dependencies included in the Gemfile. 
```
bundle install
```
From within the `relationships-tracker-api` directory, migrate and seed your database 
```
rails db:migrate
rails db:seed
```
then run a local server on localhost:3000
```
rails s
```

To complete set-up, download or clone the front end / relationship-tracker repository and follow the **Getting Started** instructions from the Readme located in that repository. 

# Built Using
- React.js, 16.8.6
- React Router, 5.0.1
- React Datepicker, 2.8.0
- React Bootstrap, 1.0.0-beta.12
- Rails, 5.2.3
- Twilio Ruby / Twilio Messaging API
- Font Awesome, 4.7.0
- Google Fonts 

# Contributor
- Jenny Shaw, student at Flatiron School Seattle (https://github.com/jenshaw86)
