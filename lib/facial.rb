require 'rubygems'
require 'opencv'

include OpenCV

module Facial
  class << self
    def detect image_path
      image = IplImage::load image_path
      detector = CvHaarClassifierCascade::load(File.expand_path(File.dirname(__FILE__) + '/../data/haarcascade_frontalface_alt.xml'))
      
      detector.detect_objects(image).map do |rect|
        {
          top_left: rect.top_left,
          bottom_right: rect.bottom_right
        }
      end
    end
  end
end
