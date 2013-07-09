Ghostcar
========

Ghostcar is you a year ago, checking into the present day. It's like ~~Twitshift for Foursquare~~ real-time Timehop.  Thanks to @infovore for building it.  Below are my instructions for setting it up, since the documentation was quite sparse.

[Original blog post](http://infovore.org/archives/2012/07/30/ghostcar/)



# Set up
## Ruby on Rails
1. Install homebrew
2. update all ruby dependencies
3. make sure the mysql.sock points to MAMP.  See [this article](http://fischerlaender.de/apple-mac/mac-os-x-trouble-with-mamp-mysql)

## Ghostcar app
1. set up MYSQL db named ghostcar_development on MAMP
2. create user and assign permissions
3. update the config.yml 
  * use the new  Username and password
  * add host: localhost
  * add: socket: [MAMP socket location] 
4. update the foursquare_creds.rb file to use your Foursquare app's API key and secret



## Create Foursquare App
1. [create a new Foursquare app](https://foursquare.com/developers/register)
2. Set both of teh follwing to your rails app home page.  The default rails server location makes it 0.0.0.0:3000 
  * Download / welcome page url
  * Redirect URI(s)
3. Keep the app in DEV mode


## Running the app
1. start your rails server on the terminal. Just run rails server.  Google any error messages, and follwo the instructions until it works.
2. visit 0.0.0.0:3000 and the app should come up.  The homepage has all the instructions you need to follow.