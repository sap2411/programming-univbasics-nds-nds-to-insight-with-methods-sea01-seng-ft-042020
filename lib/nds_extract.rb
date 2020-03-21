$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def gross_for_director(director_data)
  gross_for_director = 0
   movieSearch = 0 
   while movieSearch < director_data[:movies].length
   movieGross = director_data[:movies][movieSearch][:worldwide_gross]
    gross_for_director += movieGross
    movieSearch += 1
    end
    gross_for_director
end



def directors_totals(nds)
  result = {}
  nameSearch = 0
  while nameSearch < nds.count
   directorName = nds[nameSearch][:name]
   director = nds[nameSearch]
    result[directorName] = gross_for_director(director)
    nameSearch += 1
  end
  result
end
