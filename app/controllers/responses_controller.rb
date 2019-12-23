class ResponsesController < ApplicationController

  def create_user
    @user = User.new(user_params)
    if @user.save 
      render json: {status: 'SUCCESS', message: 'User Saved', data: @user}, status: :ok
    else 
      render json: {status: 'ERROR', message: 'User not saved', data: @user.errors}, status: :unprocessable_entity
    end 
    
  end

  def create_and_send
    totalResponses = response_params[:responses]
    savedResponseIds = []
    person = @user
    totalResponses.each do |singleR|
      responseEntry = Response.create(singleR)
      savedResponseIds << {:response_id => responseEntry.id, :response_body => responseEntry.body}
    end

    if savedResponseIds.length == totalResponses.length
      questions = question_params[:questions]
      CompletedMailer.new_completed(questions, person).deliver
      return render json: {status: 'SUCCESS', message: 'All Responses saved, sending Email'}, status: :ok
    else 
      return render json: {status: 'ERROR', message: 'Response not saved', data: nil}, status: :unprocessable_entity
    end  

  end 


  private

  def response_params
    params.permit(responses: [:body, :question_id, :user_id])
  end

  def user_params
    params.permit(:name, :email, :projectRepo, :projectURL)
  end

  def question_params
    qs = params.permit(questions: [:client_id, :body, :corresp_userid])
    newQ = qs.to_h || {}
  end
end 
