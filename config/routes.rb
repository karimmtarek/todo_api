Rails.application.routes.draw do
  match '*path', :controller => 'application', :action => 'options', via: [:options]
  namespace :api, defaults: {format: :json} do
    namespace :v1 do


      resources :todos
    end
  end
end
