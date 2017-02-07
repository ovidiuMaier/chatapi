class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :question_text, :category, :wrong_answers, :correct_answer

  def wrong_answers
    object.answers.where(is_correct: false).map do |answer|
      AnswerSerializer.new(answer)
    end
  end

  def correct_answer
    object.answers.where(is_correct: true).map do |answer|
      AnswerSerializer.new(answer)
    end
  end

end
