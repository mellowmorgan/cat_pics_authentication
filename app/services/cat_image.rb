class CatImage

  def initialize(breed)
    @breed = breed
  end
  

https://api.thecatapi.com/v1/breeds
 gives back array of objects with keys "id" and "name",we need id to do request below
  
  def get_image
    response = HTTParty.get(' https://api.thecatapi.com/v1/images/search?breed_ids=' + @breed + ',us&appid=MY_API_KEY')
    response["main"]["humidity"]
  end
end