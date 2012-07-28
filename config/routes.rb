# CURRENT FILE :: config/routes.rb
Rails.application.routes.draw do
  get "meetings" => "meetings/meeting#index" , :as => :meetings
end
