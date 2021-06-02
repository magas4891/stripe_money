Rails.application.routes.draw do
  devise_for :users, path: 'auth', path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    registration: 'signup'
  }
  get '/', to: 'orders#index'
  post '/orders/submit', to: 'orders#submit'
  post 'orders/paypal/create_payment'  => 'orders#paypal_create_payment', as: :paypal_create_payment
  post 'orders/paypal/execute_payment'  => 'orders#paypal_execute_payment', as: :paypal_execute_payment
  post 'orders/paypal/create_subscription'  => 'orders#paypal_create_subscription', as: :paypal_create_subscription
  post 'orders/paypal/execute_subscription'  => 'orders#paypal_execute_subscription', as: :paypal_execute_subscription
end
