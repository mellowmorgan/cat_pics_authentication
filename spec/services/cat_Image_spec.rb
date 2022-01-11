require 'rails_helper'

describe CatImage do

  it "returns a 200 success header when the API call is made" do
    cat_img = CatImage.new("Siamese")
    CatImage.get_breeds_array
    response = cat_img.get_image_url
    expect(response.code).to(eq(200))
  end
  it "should return array full of cat breeds" do
    
    expect(CatImage.get_breeds_array).to(eq(200))
  end
end