Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

	  namespace :admin do
	    resources :artists do
	      resources :albums do
		    resources :songs do
		    end
	      end
	    end
	  end

	  namespace :admin do
	  	resources :artists do
	  		resources :songs do
	   		end
	  	end
	  end

	  namespace :admin do
	  	resources :albums do
	  		resources :songs do
	   		end
	  	end
	  end

	 
	root 'admin/dashboard#index'
end
