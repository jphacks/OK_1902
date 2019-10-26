module Api
  module V1
    class QuizesController < ApplicationController
      def show
        render json: { status: 'SUCCESS' }
      end
    end
  end
end
