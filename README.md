# nyWiki

### nyWiki is a Wikipedia-inspired mock up meant to teach CRUD fundamentals

At nyWiki, users can sign up and sign in to create, read, update, and delete posts.

## Project Objectives

- As a user, I want to sign up for a free account by providing a user name, password and email
- As a user, I want to sign in and out of nyWiki
- As a user with a standard account, I want to create, read, update, and delete public wikis
- As a developer, I want to offer three user roles: admin, standard, or premium
- As a developer, I want to seed the development database automatically with users and wiki
- As a user, I want to upgrade my account from a free to a paid plan
- As a premium user, I want to create private wiki
- As a user, I want to edit wikis using Markdown syntax
- As a premium user, I want to add and remove collaborators for my private wiki

## Built With

#### Languages and Frameworks:
- Ruby 2.4.0
- Rails 5.1.3
- Bootstrap

#### Databases:
- SQLite (Test, Development)
- PostgreSQL (Production)

#### Tools and Gems:
- BCrypt for secure passwords
- Devise for authentication
- SendGrid for email confirmation
- FactoryGirl for test suite success

## Setup and Configuration

#### Setup:

- Environment variables were set using Figaro and are stored in config/application.yml (ignored by git).
- The config/application.example.yml file illustrates how environment variables should be stored.

#### To run nyWiki locally:

1. Clone the repository
2. Run `bundle install`
3. Create and migrate the database with `rails db:create` and `rails db:migrate`
4. Start the server using `rails s`
5. Run the app on `localhost:3000`
