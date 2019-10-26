# frozen_string_literal: true
module Api
  module V1
    class QuizesController < ApplicationController
      def new
        keywords = %w[お茶 漫画 ゲーム PC お土産 化粧品 財布 曲 弁当]

        # NOTE: idをつける必要があるのはNUXTの関係
        arrange_keywords = keywords.map.with_index(1) { |k, idx| { id: idx, keyword: k } }
        render json: { keywords: arrange_keywords }
      end

      # TODO: ここでAPIを叩いてrankingを作成する
      def create; end

      def show
        render json: { status: 'SUCCESS' }
      end
    end
  end
end
