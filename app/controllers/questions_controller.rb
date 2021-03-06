class QuestionsController < ApplicationController
  before_action :set_question, only: [:show, :update, :destroy]

  # GET /questions
  def index
    nr = Question.count
    index = rand(1..nr)
    @question = Question.find(index)
    json_response(@question)
  end

  # POST /questions
  def create
    @question = Question.create!(question_params)
    json_response(@question, :created)
  end

  # GET /questions/:id
  def show
    json_response(@question)
  end

  # PUT /questions/:id
  def update
    @question.update(question_params)
    head :no_content
  end

  # DELETE /questions/:id
  def destroy
    @question.destroy
    head :no_content
  end

  private

    def question_params
      # whitelist params
      params.require(:question).permit(:question, :category, :wrong_answer, :correct_answer)
    end

    def set_question
      @question = Question.find(params[:id])
    end

end
