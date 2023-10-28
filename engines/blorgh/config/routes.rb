Blorgh::Engine.routes.draw do
  resources :comments
  resources :articles
  root "articles#index"
end
