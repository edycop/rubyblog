# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
  - ruby 2.4.0
  - rails 5.2.3

* System dependencies
  - getbootstrap: https://getbootstrap.com/docs/4.3/getting-started/introduction/
  - Navbar component: https://getbootstrap.com/docs/4.3/components/navbar/#nav
  - Bootstrap buttons: https://getbootstrap.com/docs/4.0/components/buttons/

* Configuration:
  - rake routes: show all resources in current project
  -

* Database query
  - Rails console examples (rails console):
    > Question.count
    > Question.create email: 'edwin.caldon@codescrum.com', body: 'How old is the universe?'
    > Answer.delete_all

* Rails generator
  - rails g resource question email:string body:text
  - rails g mailer main_mailer notify_question_author

* Database initialization:
  - Change migration code to (add null: false constraints):
    def change
      create_table :questions do |t|
        t.string :email, null: false
        t.text :body, null: false

        t.timestamps null: false
      end
    end
  - rake db:migrate

* How to run the test suite
  - rake test
  - http://localhost:3000/rails/mailers/main_mailer/ to preview send emails on txt as well html format.
  - https://api.rubyonrails.org/classes/ActionMailer/MessageDelivery.html
  -

* Services (job queues, cache servers, search engines, etc.)
  - Sucker punch adapter for asynchronous processing: https://github.com/brandonhilkert/sucker_punch (Active Job section)
  -

* Deployment instructions

* Jquery tips:
  - Execute button trigger by jquery int this case show modal window:
    $(document).ready(function(){
       $("#myButton").click(function() {
         // console.log('click');
         $('#questionModal').modal({show:true});
       });
    });
  - code above goes in app/javascripts/application.js
  - https://getbootstrap.com/docs/4.3/components/modal/#via-javascript

* Rails helpers:
  - https://guides.rubyonrails.org/form_helpers.html
  - time_ago_in_words helper: https://stackoverflow.com/questions/28667064/how-to-use-rails-datehelper-method-time-ago-in-words-outside-of-rails
  - https://apidock.com/rails/ActionView/Helpers/DateHelper/time_ago_in_words
  - question_path helper: https://stackoverflow.com/questions/24756784/how-does-rails-4-generate-url-and-path-helpers
  - write own helpers: https://www.thomaslee.io/rails-view-helpers/
  -

* DRY principle:
  - Use concerns: https://medium.com/@carlescliment/about-rails-concerns-a6b2f1776d7d
  -

* Haml (HTML abstraction markup language):
  - http://haml.info/tutorial.html
  - html2haml: https://html2haml.herokuapp.com/
  - Add gem to Gemfile:
    gem 'haml'
  - bundle (install dependences)
  - html2haml \_navbar.html.erb \_navbar.html.haml (in a console)

* Sass (SCSS) (CSS with superpowers):
  - http://sass-lang.com/
  - example:
      .boxes {
        .media {
            border: thin solid #ddd;
            padding: 1em;
            border-radius: 10px;
            background-color: #eee;
            margin-bottom: 1px;
            position: relative; // relative to his children
            .time {
                position: absolute; //absolute to his father component
                top: 8px;
                right: 8px;
                color: #666;
            }
        }
      }
  -
