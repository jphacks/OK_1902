# frozen_string_literal: true
module Api
  module V1
    class RankingsController < ApplicationController
      def mark
        render json: { error: 'answerがパラメータとして必須です' }, status: 400 unless params[:answer]

        quiz = Quiz.find(params[:quiz_id])
        ranking = quiz.rankings.find_by(name: params[:answer], order: params[:order])

        # NOTE: 正解情報を情報を持っておくかどうか分からないのでこのような条件分岐に
        if ranking
          render json: { is_success: true }, status: 200
        else
          render json: { is_success: false }, status: 200
        end
      end
    end
  end
end
