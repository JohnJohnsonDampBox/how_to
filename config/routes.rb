HowTo::Application.routes.draw do

  resources :alcohols do
    resources :steps
  end

  root to: 'alcohols#index'

end
