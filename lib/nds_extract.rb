$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
 directorName = director_data[:name]
   moviesCombinedTotal = 0
   movieSearch = 0 
   while movieSearch < director_data[:movies].count
   movieGross = nds[nameSearch][:movies][movieSearch][:worldwide_gross]
    moviesCombinedTotal += movieGross
    movieSearch += 1
    end
    directors_totals[directorName] = moviesCombinedTotal
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  
  result
end
