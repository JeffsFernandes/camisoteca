Rails.application.routes.draw do
  devise_for :users
  authenticate :user do
    # root to: 'collection_photos#new'
    resources :collection_jerseys
  end
end
