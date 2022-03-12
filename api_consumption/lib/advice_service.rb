require 'faraday'
require 'json'

class AdviceService
  def random
    response = Faraday.get('https://api.adviceslip.com/advice')
    parsed = JSON.parse(response.body)
  end

  def search(query)
    response = Faraday.get("https://api.adviceslip.com/advice/search/#{query}")
    parsed = JSON.parse(response.body)
  end
end
