class Record < ApplicationRecord
  
  mount_uploader :picture, PictureUploader
  
  before_save do
    
    @height_2 = height ** 2 / 10000
    self.bmi = weight.fdiv(@height_2).floor(1).to_f
    
    @bmiweight = @height_2 * targetbmi
    self.targetweight = @bmiweight.floor(1).to_f
    
    @compare = weight - targetweight
    self.compareweight = @compare.floor(1).to_f
    
  end

end
