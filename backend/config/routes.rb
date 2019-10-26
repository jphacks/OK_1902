Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      resource :quizes, only:[:new, :show, :create]
    end
  end
end
