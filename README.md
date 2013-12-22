# Poker example, for Global Day of Coderetreat, Las Palmas de Gran Canaria [![Build Status](https://travis-ci.org/groteck/poker.png?branch=master)](https://travis-ci.org/groteck/poker)
## Description
Ruby solution for poker game.
## How to use
### Non ruby developers
* Install rvm and ruby
[windows](http://blog.developwithpassion.com/2012/03/30/installing-rvm-with-cygwin-on-windows/)
[OSX and linux](https://rvm.io/rvm/install)
* Go to next section.

### Ruby developers

* Clone project
* Go into de root project path `cd poker`
* Run Interactive Ruby Shell `irb`
* Include the example directory un your system path lib `$LOAD_PATH.unshift('lib')`
* Require project file `require 'poker'`
* And use

### Use example

```ruby
Hand.new('AH KH QH TH JH')
```

## Test
* Clone project
* Go into de root project path `cd poker`
* Run `rspec spec`
