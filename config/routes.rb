Rails.application.routes.draw do

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'pages#home'

  # match 'contact' => 'pages#home', :as => 'contact', :via => :get
  match 'contact' => 'pages#create', :as => 'contact', :via => :post
end
