Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resources :artists do
  resources :songs do
    collection do
      get 'remove_all'
    end
  end
end

post 'artists/:id' => "artists#destroy_all"
root "artists#index"

end
