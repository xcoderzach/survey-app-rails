hide_questions ||= false
xml.questionaire :id => questionaire.id do
  xml.title questionaire.title
  xml.created_at questionaire.created_at
  xml.updated_at questionaire.updated_at
  if !hide_questions
    xml.questions do
      questionaire.questions.each do |question|
        xml << render(:partial => question)
      end
    end
  end
end  
