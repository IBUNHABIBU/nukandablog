[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]

<br />

<p align="center">
  <a href="git@github.com:IBUNHABIBU/TZ-social-events-booking.git">
    <p align="center">
      <img src="https://raw.githubusercontent.com/github/explore/80688e429a7d4ef2fca1e82350fe8e3517d3494d/topics/rails/rails.png" alt="rails" width="100" height="100">
  </a>

  <h2 align="center"> RAILS PROJECT TEMPLATE</h2>
  <h3 align="center"> This is the template to replicate all my projects</h3>

  <p align="center">
    <a href="https://github.com/IBUNHABIBU/TZ-social-events-booking/issues">Report Bug</a>
    <a href="https://github.com/IBUNHABIBU/TZ-social-events-booking/issues">Request Feature</a>
  </p>
</p>


## Table of Contents

* [About the Project](#about-the-project)
* [Built With](#built-with)
* [Features](#features)
* [Requirements](#requirements)
* [Useful Commands](#useful-commands)
* [Live Link](#Live-link)
* [Contact](#Authors)
* [Acknowledgements](#Acknowledgements)

<!-- ABOUT THE PROJECT -->
## About The Project
#### Starter code

This is the starter code for all my rails project to replicate the same structure and style for all my projects.


### Project specifications
It has all the features that I need to build a rails project


### Features
- [] User authentication
    - [] Sign up/Sign in with username and password/ Sign in with Facebook/twitter/github
    - [] Reset password
    - [] Forgot password
    - [] Remember me
    - [] Email confirmation
    - [] Email notifications
    - [] OTP authentication, 2FA, 2SV, authenticator app, SMS, email

- [] Clean code, dry, BEM, SASS, loop
- [x] Mega Menu, footer, sidebar
- [] Toast notification using hotwire
- [] site map, geolocation, google navigator etc
- [x] Responsive design
- [] Search
- [] Pagination
- [] Filter
- [] Sort
- [] Rating
- [] Comment
- [] Like
- [] Follow
- [] Share
- [] Favorite
- [] Bookmark
- [] Upload image
- [] Upload video
- [x] Upload audio
- [x] Upload file
- [] Well documented Gem file and readme file
- [] Charts and graph
- [] Hotwire

### Api end points

<!-- | Endpoint | Description |
|---------|-------------|
| `https://final-capstone-rails-api.herokuapp.com/` | baseUrl |
| `baseUrl/users` | users resource |
| `baseUrl/logout` | logout |
| `baseUrl/logged_in` | login |
| `baseUrl/api/v1/cars` | cars resource |
| `baseUrl/api/v1/bookings` | bookings resource | -->

  
<h3 align="center"> Entity Relationship Diagram (ERD) </h3>

![screenshot](https://github.com/IBUNHABIBU/car-rent-booking-api/blob/rails-api-setup/app/assets/ERD.png)

<!-- BUILD WITH -->
## Built With

This project was built using these technologies.
* Ruby on Rails


### Requirements
* Ruby
* Ruby on Rails
* Postgresql
* SASS
* Rspec
* Rubocop
* Capybara


### How to Install 

To run this locally, clone the repository, navigate to its containing directory.

#### Follow these commands step by step:-

`
 git@github.com:IBUNHABIBU/car-rent-booking.git
`

`
cd car-rent-booking
`

 `$bundle install --without production`

 `$sudo service postgresql start`
 
 `$rails db:setup`

 `$rails db:migrate`
 
 `$rails server`
 
Enjoy playing it.

### Testing

Navigate to the project folder make sure Rspec is installed and then run the following command

 `$rspec -f d `


## Useful Commands

| Command | Description |
|---------|-------------|
| `rails new . --css=sass --javascript=esbuild --database=postgresql` | create new project inside current directory |
| `bundle install` | Install project dependencies |
| `sudo service postgresql start` | Starting the database |
| `rails db:migrate` | Database migration |
| `rails server` | start the server |
| `rubocop -a` | Fix all the lint errors automatically |
| `bundle exec rspec` | Run all rspec tests |
| `rspec spec/requests --format documentation` | Run all rspec tests well formated |
| `rspec spec/requests --format doc` | Run all rspec tests well formated |
| `rspec spec/requests -f d` | Run all rspec tests well formated |
| `rspec spec/foldername/file_name_spec.rb` | Run rspec tests for a specific file |
| `EDITOR='code --wait' rails credentials:edit` | Edit credentials |

<!-- ### How to play -->
secret_key_base: a695950e10660b4b4d2593e66174883b929790c0c9ef4e8532d64e4878d1ae85a0089d0059bab3e854f015ac9a142c27e0dcaba31b4a8ce17e49eb2c5bc24e99


### Challenges
1. 

It seems like you're encountering an error related to SSH key authentication with the ed25519 key type in your Ruby application. The error message indicates that the ed25519 gem is missing, which is required for ssh-ed25519 support in net-ssh.
Solution 

add 
gem 'ed25519', '>= 1.2', '< 2.0'
gem 'bcrypt_pbkdf', '>= 1.0', '< 2.0'

2. 
You have already activated uri 0.12.1, but your Gemfile requires uri 0.13.0. Prepending `bundle exec` to your command may solve this.

Solution

I removed the uri '0.12.1' in the vps using command 

`gem list uri`
gem list -d uri
gem uninstall uri
gem install uri -v '0.13.0'

2.   01 rake aborted!
      01 ActiveSupport::MessageEncryptor::InvalidMessage: ActiveSupport::MessageEncryptor::InvalidMessage

      Solution

      I deleted the credentials.yml.enc
      and then I created again using the command `EDITOR='code --wait' rails credentias:edit`

3. DEBUG [a7255b43] 	rake aborted!
 DEBUG [a7255b43] 	ActiveRecord::NoDatabaseError: We could not find your database: kamich. Which can be found in the database configuration file located at config/database.yml.

 solution

 I created the database in the vps using the sql commands

 when doing display none transision will not work
 
 `CREATE DATABASE kamich`;



## Live link

[Live Demo ](https://final-car-rent-api.herokuapp.com/api/v1/cars) of the project

## Authors

👤 **Salum Habibu** 
    
* Github: [IBUNHABIBU](https://github.com/IBUNHABIBU)
* Twitter: [@ibunhabibu](https://twitter.com/Ibunhabibu)
* LinkedIn: [Salum Habibu Kombo](https://www.linkedin.com/in/salum-habibu/)

## Show your support

Give a :star: if you like this project!


## Acknowledgements
Credits go to 
- [Mr Eric Mbouwe](https://github.com/EricMbouwe), [Emmanuel Kamala](https://github.com/emmanuelkamala) and [Marcelo Araújo](https://github.com/marcelomaidden)(Microverse students) for their help to resolve the bugs.
- All my standup team for their help.
- All TSE who reviewed my project.
- All those helped me to resolve bugs.

<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/IBUNHABIBU/TZ-social-events-booking.svg?style=flat-square
[contributors-url]: https://github.com/IBUNHABIBU/TZ-social-events-booking/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/IBUNHABIBU/TZ-social-events-booking.svg?style=flat-square
[forks-url]: https://github.com/IBUNHABIBU/TZ-social-events-booking/network/members
[stars-shield]: https://img.shields.io/github/stars/IBUNHABIBU/TZ-social-events-booking.svg?style=flat-square
[stars-url]: https://github.com/IBUNHABIBU/TZ-social-events-booking/stargazers
[issues-shield]: https://img.shields.io/github/issues/IBUNHABIBU/TZ-social-events-booking.svg?style=flat-square
[issues-url]: https://github.com/IBUNHABIBU/TZ-social-events-booking/issues

## 📝 License

This project is [MIT](https://opensource.org/licenses/MIT) licensed.


server {

  server_name kamich.darlive.cyou www.kamich.darlive.cyou;
  root /home/deploy/colabapi/current/public;

  passenger_enabled on;
  passenger_app_env production;

  location /cable {
    passenger_app_group_name colabapi_websocket;
    passenger_force_max_concurrent_requests_per_process 0;
  }

  # Allow uploads up to 100MB in size
  client_max_body_size 100m;

  location ~ ^/(assets|packs) {
    expires max;
    gzip_static on;
  }

    listen [::]:443 ssl; # managed by Certbot
    listen 443 ssl; # managed by Certbot
    ssl_certificate /etc/letsencrypt/live/colabapi.darlive.cyou/fullchain.pem; # managed by Certbot
    ssl_certificate_key /etc/letsencrypt/live/colabapi.darlive.cyou/privkey.pem; # managed by Certbot
    include /etc/letsencrypt/options-ssl-nginx.conf; # managed by Certbot

## toast notification 

    https://bbbootstrap.com/snippets/toast-notification-close-button-27153346