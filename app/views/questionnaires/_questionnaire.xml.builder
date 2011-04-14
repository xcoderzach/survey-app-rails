hide_questions ||= false
xml.questionnaire :id => questionnaire.id do
  xml.title questionnaire.title
  xml.author :id => questionnaire.author_id
  xml.created_at questionnaire.created_at
  xml.updated_at questionnaire.updated_at
  if(!hide_questions)
    xml.questions do
      questionnaire.questions.each do |question|
        xml << render(:partial => question)
      end
    end
  end
end  
