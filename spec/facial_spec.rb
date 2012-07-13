require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe Facial do
  describe '.detect' do
    it "should return a list of faces" do
      image_path = File.expand_path(File.dirname(__FILE__) + '/../samples/queenelizabethii.jpeg')
      results = Facial.detect image_path
      results.should be_an(Array)
    end
  end
end
