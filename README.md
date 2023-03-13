# JustSurvive

<b>Description:</b>
Its an app that allows users to host and book survival experiences.

In a team of four, we create the app by first protoyping the UI design and user journeys using figma, then dividing the tasks into actionable steps using Trello. We ensured minimal bugs throughout the development process by doing code reviews before pushing to Github.

<ins>Experiences List</ins>
![screenshot](https://github.com/joshnsw/joshportfolio/blob/master/assets/justsurvivehome.png)

<ins>Bookings request page</ins>
![screenshot](https://github.com/joshnsw/joshportfolio/blob/master/assets/justsurviverequest.png)

## Usage
App home: https://survivalexperience.herokuapp.com/


Host Details </br>
User: luyee@wong.com
pW:12345678


## Features

<ins>Host</ins>
-  [Host an experience] : Create experiences by submitting a form, and request or accept booking requests through your user profile.
- [Book an experience] : Book experiences by sending a request to the host.


<ins>Users</ins>

- [Book an experience] : Book experiences by sending a request to the host.




## Getting Started
### Setup

Install gems
```
bundle install
```
Install JS packages
```
yarn install
```

### ENV Variables
Create `.env` file
```
touch .env
```
Inside `.env`, set these variables. For any APIs, see group Slack channel.
```
CLOUDINARY_URL=your_own_cloudinary_url_key
```

### DB Setup
```
rails db:create
rails db:migrate
rails db:seed
```

### Run a server
```
rails s
```

## Built With
- [Rails 7](https://guides.rubyonrails.org/) - Backend / Front-end
- [Stimulus JS](https://stimulus.hotwired.dev/) - Front-end JS
- [Heroku](https://heroku.com/) - Deployment
- [PostgreSQL](https://www.postgresql.org/) - Database
- [Bootstrap](https://getbootstrap.com/) — Styling
- [Figma](https://www.figma.com) — UI Prototyping

## Acknowledgements
Everyone did a great job!

## Team Members
- [Joshua Ng](https://github.com/joshnsw)
- [Joe Sandy](https://github.com/Luciensands)
- [El Mehdi](https://github.com/Mhiidooo)
- [Lu Yee](https://github.com/wongluyee)


