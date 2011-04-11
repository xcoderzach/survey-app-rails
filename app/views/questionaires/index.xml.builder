xml.instruct!
xml.surveyapp do 
  xml.questionaires do
    @questionaires.each do |questionaire| 
      xml << render(:partial => questionaire, :locals => {:hide_questions => true})
    end
  end
end
