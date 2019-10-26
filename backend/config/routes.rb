Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      resources :quizes, only: %i[new show create] do
        post 'ranking/:order/mark', to: 'rankings#mark'
      end
    end
  end
end
