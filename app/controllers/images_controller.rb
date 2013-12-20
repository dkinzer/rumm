class ImagesController < MVCLI::Controller
  requires :images

  def index
    images.all
  end
end
