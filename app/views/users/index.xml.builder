xml.instruct!
xml.surveyapp do  
  xml.users do
    @users.each do |user|
      xml << render(:partial => user)
    end
  end
end  
