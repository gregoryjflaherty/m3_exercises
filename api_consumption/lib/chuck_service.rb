require 'faraday'
require 'json'

class ChuckService

  def get_url(url)
    response = Faraday.get(url)
    parsed = JSON.parse(response.body)
  end

  def random
    get_url("https://api.chucknorris.io/jokes/random")
  end

  def random_in_category(category)
    get_url("https://api.chucknorris.io/jokes/random?category=#{category}")
  end

  def categories
    get_url("https://api.chucknorris.io/jokes/categories")
  end

  def search(query)
    get_url("https://api.chucknorris.io/jokes/search?query=#{query}")
  end
end
