xml.instruct!
xml.surveyapp do 
  xml.questionaires do
    @questionaires.each do |questionaire| 
      xml << render(:partial => questionaire)
    end
  end
end
