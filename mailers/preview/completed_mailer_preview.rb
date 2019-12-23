class CompletedMailerPreview < ActionMailer::Preview

  def new_completed
    user = User.last
    questions = [{"client_id"=>3, "body"=>"Using best practices for OOP:", "corresp_userid"=>92},
      {"client_id"=>4, "body"=>"Modular Development:", "corresp_userid"=>92},
      {"client_id"=>5, "body"=>"Full-stack workflow understanding:", "corresp_userid"=>92},
      {"client_id"=>6, "body"=>"Testing:", "corresp_userid"=>92},
      {"client_id"=>7, "body"=>"Database knowledge:", "corresp_userid"=>92},
      {"client_id"=>8, "body"=>"Debugging:", "corresp_userid"=>92},
      {"client_id"=>9, "body"=>"Problem Solving Skills:", "corresp_userid"=>92},
      {"client_id"=>10, "body"=>"JavaScript:", "corresp_userid"=>92},
      {"client_id"=>11, "body"=>"HTML:", "corresp_userid"=>92},
      {"client_id"=>12, "body"=>"CSS:", "corresp_userid"=>92},
      {"client_id"=>13, "body"=>"Working on a team:", "corresp_userid"=>92},
      {"client_id"=>14, "body"=>"Self motivation:", "corresp_userid"=>92},
      {"client_id"=>15, "body"=>"Communication skills:", "corresp_userid"=>92},
      {"client_id"=>16, "body"=>"Your own energy level:", "corresp_userid"=>92},
      {"client_id"=>17, "body"=>"Intelligence/Aptitude:", "corresp_userid"=>92}
    ]
    CompletedMailer.new_completed(questions, User.last)
  end 
end 
