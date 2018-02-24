Rails.application.routes.draw do
  # resources :addresses

  resources :users do
  	collection do
	  	get :children
	  	get :adolescenents
	  	get :adults
  	end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


# fast json api netflix jsonapi-rb