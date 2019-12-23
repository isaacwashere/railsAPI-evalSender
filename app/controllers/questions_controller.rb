class QuestionsController < ApplicationController

  # def create
  #   totalQuestions = questions_params[:questions]
  #   savedQuestionIds = []

  #   totalQuestions.each do |singleQ|
  #     question = Question.create(singleQ)
  #     savedQuestionIds << {:question_id => question.id}
  #   end

  #    if savedQuestionIds.length == totalQuestions.length
  #     return render json: {status: 'SUCCESS', message: 'All Questions received', data: savedQuestionIds}, status: :ok
  #   else 
  #     return render json: {status: 'ERROR', message: 'Questions not saved', data: nil}, status: :unprocessable_entity
  #   end 

  # end




  #   private 

  #     def questions_params
  #       params.permit(questions: [:client_id, :body, :corresp_userid], question:{})
  #     end 


end
