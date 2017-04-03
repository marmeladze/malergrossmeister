WebService::App.controllers :place, :provides => [:json] do
  
  # get :index, :map => '/foo/bar' do
  #   session[:foo] = 'bar'
  #   render 'index'
  # end

  # get :sample, :map => '/sample/url', :provides => [:any, :js] do
  #   case content_type
  #     when :js then ...
  #     else ...
  # end

  # get :foo, :with => :id do
  #   "Maps to url '/foo/#{params[:id]}'"
  # end

  # get '/example' do
  #   'Hello world!'
  # end
  get :index, :provides => :json do
    @places = Place.all.to_json
  end

  get :show, :with => :id, :provides => :json do
    @place = Place.find(params[:id]).to_json
  end

  get :search, :with => :name, :provides => :json do
    @results = Place.where("name ILIKE ?", "%#{params[:name]}%").to_json
  end
end
