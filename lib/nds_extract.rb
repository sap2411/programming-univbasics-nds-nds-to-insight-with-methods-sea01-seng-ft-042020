$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  gross_for_director = 0
   movieSearch = 0 
   while movieSearch < director_data[:movies].count
   movieGross = director_data[:movies][movieSearch][:worldwide_gross]
    gross_for_director += movieGross
    movieSearch += 1
    end
    gross_for_director
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  nameSearch = 0
  while nameSearch < nds.count
   directorName = nds[nameSearch][:name]
    result[directorName] = gross_for_director(directorName)
    nameSearch += 1
  end
  result
end
