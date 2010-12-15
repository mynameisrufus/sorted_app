## Example Sorted Application

You need sqlite3 for this app.

#### Linux

    sudo apt-get install sqlite3
    sudo apt-get install libsqlite3-dev

#### Mac OSX

    brew install sqlite

#### Then

    git clone git://github.com/mynameisrufus/sorted_app.git
    cd sorted_app
    bundle install
    rake db:migrate
    rake db:seed
    rails server
