Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'application#home', :as => '/home'
  get '/home', :to => 'application#home'
  get '/units', :to => 'application#units'
  get '/nations', :to => 'application#nations'
  get '/structures', :to => 'application#structures'
  get '/strategy', :to => 'application#strategy'
end
