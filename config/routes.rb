Rails.application.routes.draw do
  resources :connectors do
    resources :contents, only: :show
  end

  root 'connectors#index'
end
