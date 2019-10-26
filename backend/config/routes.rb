Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      resources :quizes, only: %i[new show create] do
        post 'ranking/:order/mark', to: 'rankings#mark'
        get 'ranking/:order/filter_half', to: 'rankings#filter_half'
      end
    end
  end
end
