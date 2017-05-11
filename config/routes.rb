Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/saml/auth' => 'saml_idp#new'
  get '/saml/metadata' => 'saml_idp#show'
  post '/saml/auth' => 'saml_idp#create'
  match '/saml/logout' => 'saml_idp#logout', via: [:get, :post, :delete]
end
