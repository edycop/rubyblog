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

* Database creation
  - Rails console examples (rails console):
    > Question.count
    > Question.create email: 'edwin.caldon@codescrum.com', body: 'How old is the universe?'

* Database initialization:
  - rails g resource question email:string body:text
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

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* Jquery tips:
  - Execute button trigger by jquery int this case show modal window:
  - $(document).ready(function(){
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
  -

*
