Flagopostilka.rb
====================

Simple tool for posting flag into checker

Require [Unirest](http://unirest.io)
```
gem install unirest
```
Usage
---------------------
```
  ruby flagopostilka.rb [p|g] [host] [param] [cookie]
Options:
  p|g                   POST|GET method
  host                  checker address 
  param                 data
  cookie                cookie – isn't require 

ruby flagopostilka.rb p http://127.0.0.1:27/fl.php a=1,b=2 c=3,d=4
```
Author: gJamDev ( @gjamdev )

License: MIT License (opensource.org/licenses/MIT)
