WebService::App.controllers :places, :provides => [:json] do
  get :index, :provides => :json do
    @places = Place.all.to_json
  end

  get :show, :with => :id, :provides => :json do
    @place = Place.find(params[:id]).to_json
  end

  get :search, :with => :name, :provides => :json do
    @results = Place.where("name LIKE ?", "%#{params[:name]}%").to_json
  end
end
