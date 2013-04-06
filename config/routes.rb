TodoApp::Application.routes.draw do
  resources :projects do
    resources :items, only: [:new]
  end
  
  resources :items
  
  resources :teams do
    resources :projects, only: [:new]
  end
end
