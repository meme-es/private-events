# Private Event

In this project, we built an application named Private Events and that behaves similarly to [Eventbrite web site](https://www.eventbrite.com/). The main goal is to put in practice the main concepts of Associations in Rails.

In the end, we’ll finally really get to dive into ActiveRecord’s associations, one of the best features it offers.

_This is [The Odin Project assignment](https://www.theodinproject.com/courses/ruby-on-rails/lessons/associations) in order to accomplish Ruby on Rails lessons._

## Built With 

- Ruby 2.6.5p114
- Rails 5.2.4.2
- SCSS
- HTML5
- RSpec
- Cabybara

## Getting start

### Install

In order to start with this project You need to have:

1. [Ruby environment](https://www.ruby-lang.org/en/documentation/installation/) installed
2. [Ruby on Rails](https://www.theodinproject.com/courses/ruby-on-rails/lessons/your-first-rails-application-ruby-on-rails) framework
3. And clone [this repository :blue_book:](https://github.com/meme-es/private-events.git)

### Run

1. Enter to the project directory `cd private-events` 
2. Install all gems `bundle install` or just `bundle`
3. Migrate the database `rails db:migrate`
4. Run rails server `rails s`
5. Open `localhost:300`, the first view will show you all the posts, but actually you didn't have posted yet.
  - You are going to see this login page. You have to create a user then click **Sign Up** button

![image](https://user-images.githubusercontent.com/24902525/83055269-40cc9f80-a019-11ea-8272-b7e40ce526af.png)

6. Fill the form with your information and create a user. Then you will redirect to the login page, login only with your username.

![image](https://user-images.githubusercontent.com/24902525/83055754-e1bb5a80-a019-11ea-8de4-dc41b2a30925.png)

7. If your username it's correct you are going to see the index page 

![image](https://user-images.githubusercontent.com/24902525/83055868-1202f900-a01a-11ea-810a-b14dd00bc2b0.png)

 In this dashboard you are able to:
 -   Create Events
 -   List all events splitting  in past and upcoming ones
 -  List only my created events 
 -  List my attendings events
 -  Attend an event which is not yours

## Testing

> We are using [RSpec testing tool](https://rspec.info/) to test all enumerable methods. Also some detailed [documentation](https://relishapp.com/rspec/docs) about this tool.
And [Capybara](http://teamcapybara.github.io/capybara/) with SeleniumChrome Driver to integration tests

### Install & setting up environment 
>Follow these [instructions](https://www.codewithjason.com/rails-testing-hello-world-using-rspec-capybara/) to set up your environment. This integrations configuration it's set up to run on Chrome browser, be sure you have installed first. 

### Run

- Whether it's integration or unit test, create a file `<your name file>_spec.rb`
- Write some rules to run your test.(Check Capybara [documentation](https://rubydoc.info/github/teamcapybara/capybara/master) )
- Open a Terminal window and then run this block code
`rspec spec/<you directory path>/<your file name>.rb`
- Check if your test passed or it's throwing errors

## Authors

👤 **Bertil Tandayamo**

- Github: [@bertil291utn](https://github.com/bertil291utn)
- Twitter: [@btandayamo](https://twitter.com/batandayamo)
- Linkedin: [Bertil Tandayamo](http://bit.ly/bertil_linkedin)

👤 **Manuel Muhun**

- Github: [@meme-es](https://github.com/meme-es)
- Twitter: [@meme_es](https://twitter.com/meme_es)
- Linkedin: [Manuel](https://www.linkedin.com/in/manuel-elias/)


## 🤝 Contributing

Contributions, issues and feature requests are welcome!

## Show your support

Give a ⭐️ if you like this project!