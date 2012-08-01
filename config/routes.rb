# CURRENT FILE :: config/routes.rb
#Rails3BootstrapDeviseCancan::Application.routes.draw do
Rails.application.routes.draw do
  #get "meetings" => "meetings/meeting#index" , :as => :meetings
  resources :meetings
end
