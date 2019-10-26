Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      resource :quizes, only: %i[new show create] do
        post ':quiz_id/ranking/:order/mark', to: 'rankings#mark'
      end
    end
  end
end
