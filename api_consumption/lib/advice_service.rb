require 'faraday'
require 'json'

class AdviceService

  def get_url(url)
    response = Faraday.get(url)
    parsed = JSON.parse(response.body)
  end

  def random
    get_url('https://api.adviceslip.com/advice')
  end

  def search(query)
    get_url("https://api.adviceslip.com/advice/search/#{query}")
  end
end
