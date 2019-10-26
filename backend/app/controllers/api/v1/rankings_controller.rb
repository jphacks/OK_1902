# frozen_string_literal: true
module Api
  module V1
    class RankingsController < ApplicationController
      def mark
        return render json: { status: 400, error: 'answerがパラメータとして必須です' }, status: 400 unless params[:answer]

        quiz = Quiz.find(params[:quize_id])
        ranking = quiz.rankings.find_by(name: params[:answer], order: params[:order])

        ranking.grade.create if ranking
        render json: { status: 200, is_success: ranking.present? }, status: 200
      end

      def filter_half
        quiz = Quiz.find(params[:quize_id])
        ranking = quiz.rankings.find_by(order: params[:order])
        candidate_answers = quiz.candidate_answers

        answer_name = ranking.name
        # NOTE: 他のランキングで正解済みの情報は、不正解の回答候補にする
        corrected_answers = quiz.rankings.select(&:grade)
        negative_answer_names = candidate_answers.map(&:name) - corrected_answers.map(&:name).push(answer_name).uniq

        render json: { status: 200, positive_answer_name: answer_name, negative_answer_name: negative_answer_names.sample }, status: 200
      end
    end
  end
end
