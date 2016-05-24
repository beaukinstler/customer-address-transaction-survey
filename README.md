Customer Surveys
================

Create, administer users, and export details for CAT (Customer Address Transaction) surveys.




------------
This application was generated with the [rails_apps_composer](https://github.com/RailsApps/rails_apps_composer) gem
provided by the [RailsApps Project](http://railsapps.github.io/).

Rails Composer is supported by developers who purchase our RailsApps tutorials.

Problems? Issues?
-----------

Need help? Ask on Stack Overflow with the tag 'railsapps.'

Your application contains diagnostics in the README file. Please provide a copy of the README file when reporting any issues.

If the application doesn't work as expected, please [report an issue](https://github.com/RailsApps/rails_apps_composer/issues)
and include the diagnostics.

Ruby on Rails
-------------

This application requires:

- Ruby 2.3.0
- Rails 4.2.6

Learn more about [Installing Rails](http://railsapps.github.io/installing-rails.html).

Getting Started
---------------
The primary purpose for this application is to allow a reletively strict set of questions to be asked

This application uses _Devise_ with roles.
In it's default and current form, a new user can sign up, but do little more than read the _About_ page, and change passwords, or remove

An _admin_ user needs to convert any new users to a role other than the defaut _user_ role for access to the functionality.



Documentation and Support
-------------------------

Issues
-------------
This is a beta version, mostly as a means to capture a veriy specific question set.

A more flexible survey model woudl be idea for use by others.  Some models have been created with this vision in mind, but not implemented.

The primary model is the CAT model.

### Deleting Users
Referential integrity needs to be managed with better UI.  We don't want to lose CAT records when a user is deleted, so currently it will just fail if you try to delete a user with CAT records.


Contributing
------------
Open to all contribution.


Credits
-------
Beau Kinstler - Developer

[G2G Reasearch Group](www.g2gresearch.com) - Survey Design and Administration Coaching

[RailsApps Project](http://railsapps.github.io/) and [Daniel Kehoe](https://github.com/DanielKehoe)


License
-------
[MIT License](https://opensource.org/licenses/mit-license)

http://www.opensource.org/licenses/mit-license