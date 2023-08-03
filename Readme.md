# Shared Database Custom Gem

## Description

Due to the use of a shared database across multiple applications, the team has deemed it necessary to create a seperate gem which manages all the ActiveRecord models, schemas and migrations, such that it is consistent across all the applications.

Rather than copy-pasting and synchronizing multiple model objects manually, having a gem allows a quick require of the gem, which sets up all the necessary models and databases.

## Components

### Rake tasks

There are 6 rake tasks that override the rake tasks defined by Railties in Rails as specified in [railties.rb](lib/shared_database/railtie.rb). If running in a non-rails environment, these are standalone rake tasks as specified in [Rakefile](lib/shared_database/Rakefile).

| Command          | Function                                               |
| ---------------- | ------------------------------------------------------ |
| rake db:create   | Creates the DB                                         |
| rake db:migrate  | Run migrations                                         |
| rake db:drop     | Delete the DB                                          |
| rake db:reset    | Combination of Create, Migrate and Drop                |
| rake db:schema   | Creates a Schema file of the current DB                |
| rake g:migration | Generate a new blank migration file with the timestamp |

### Models

Models are stored in [/lib/shared_database/models directory](lib/shared_database/models/article.rb)