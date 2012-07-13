require 'rubygems'
require 'opencv'

include OpenCV

module Facial
  class << self
    def detect image_path
      unless @detector
        # initialize the detector
        image = IplImage::load image_path
        @detector = CvHaarClassifierCascade::load(File.expand_path(File.dirname(__FILE__) + '/../data/haarcascade_frontalface_alt.xml'))
      end
      
      @detector.detect_objects(image).map do |rect|
        {
          top_left: rect.top_left,
          bottom_right: rect.bottom_right
        }
      end
    end
  end
end
