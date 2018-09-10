Rails.application.routes.draw do
  devise_for :users
  authenticate :user do
 	root to: 'collection_photos#new'
  	get 'collection_photos/new', to: 'collection_photos#new', as: 'new_collection_photo'
  end
end
