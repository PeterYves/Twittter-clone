Rails.application.routes.draw do
  resources :t_clones do
    collection do
      post :confirm
    end
  end
  get 'clone/index'
end
