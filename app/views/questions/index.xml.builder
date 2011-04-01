xml.instruct!
xml.surveyapp do 
  xml.questions do
    @questions.each do |question| 
      xml << render(:partial => question)
    end
  end
end  
