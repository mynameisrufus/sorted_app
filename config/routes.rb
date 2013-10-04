SortedApp::Application.routes.draw do
  root to: "users#index"
  resources :users
  resources :items
end
