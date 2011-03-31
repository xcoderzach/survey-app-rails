xml.instruct!
xml.surveyapp do 
  xml.questionaires do
    @questionaires.each do |questionaire| 
      xml.questionaire :id => questionaire.id do
        xml.title questionaire.title
        xml.created_at questionaire.created_at
        xml.updated_at questionaire.updated_at
        xml.questions do
          questionaire.questions.each do |question|
            xml << render(:partial => question)
          end
        end
      end
    end
  end
end
