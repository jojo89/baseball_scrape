# Baseball Scraper

### Dependecies
Mongodb


### Development

from the directory you would like to store the project.

```
$ git@github.com:jojo89/baseball_scrape.git
```

```
$ cd baseball_scrape
```

```
$ bundle install
```

```
$ shotgun
```
 
 Your Application will be available at localhost:9393

### Scraping 

run 

```
bundle exec rake fetch_games  DATE=date_to_scrape(yyyymmdd)
```
this will scrape mlb.com for all baseball games on the given date

### production

project is hosted at https://sleepy-dusk-5552.herokuapp.com/


### Notes 
  This application scrapes Baseball game information from the Major League Baseball website using Nokogiri to parse the html. It then stores the data in a very simple Mongo Table. When the user visits the site it displays all the games from the games table. When a user clicks on a game it then directs to that resources "show" page and gives them more information about the game.


