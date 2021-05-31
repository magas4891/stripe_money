Rails.application.routes.draw do
  devise_for :users, path: 'auth', path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    registration: 'signup'
  }
  get '/', to: 'orders#index'
  post '/orders/submit', to: 'orders#submit'
end
