xml.instruct!
xml.surveyapp do 
  xml.questionnaires do
    @questionnaires.each do |questionnaire| 
      xml << render(:partial => questionnaire)
    end
  end
end
