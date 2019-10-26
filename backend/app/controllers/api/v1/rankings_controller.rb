# frozen_string_literal: true
module Api
  module V1
    class RankingsController < ApplicationController
      def mark
        return render json: { error: 'answerがパラメータとして必須です' }, status: 400 unless params[:answer]

        quiz = Quiz.find(params[:quize_id])
        ranking = quiz.rankings.find_by(name: params[:answer], order: params[:order])

        ranking.grades.create() if ranking
        render json: { is_success: ranking.present? }, status: 200
      end
    end
  end
end
