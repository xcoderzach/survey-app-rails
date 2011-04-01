xml.questionnaire :id => questionnaire.id do
  xml.title questionnaire.title
  xml.created_at questionnaire.created_at
  xml.updated_at questionnaire.updated_at
  xml.questions do
    questionnaire.questions.each do |question|
      xml << render(:partial => question)
    end
  end
end  
