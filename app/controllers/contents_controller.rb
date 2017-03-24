class ContentsController < ApplicationController
  before_action :set_content, only: :show

  def show
  end

  private

  def set_content
    @content = Content.find(params[:id])
  end
end
