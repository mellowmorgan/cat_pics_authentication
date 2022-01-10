class CatImage

  def initialize(breed)
    @breed = breed
    @breed_id = ""
    @breeds_array = []
  end
  
  def self.get_breeds_array
    name_array = []
    response = HTTParty.get(' https://api.thecatapi.com/v1/breeds')
    response.each do |hash|
      filler_array = []
      filler_array.push(hash.name)
      filler_array.push(hash.id)
      name_array.push(filler_array)
    end
    @breeds_array = name_array
  end

  def get_image_url
    @breeds_array.each do |obj|
      if @breed == obj[0]
        @breed_id = obj[1]
      end
    end 
    response = HTTParty.get(' https://api.thecatapi.com/v1/images/search?breed_ids=' + @breed_id + ',us&appid=CAT_API_KEY')
    response[0]["url"]
  end
end