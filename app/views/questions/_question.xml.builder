xml.question :type => question.typeof, :id => question.id do
  xml.text(question.text)
  xml.created_at(question.created_at)
  xml.updated_at(question.updated_at)
  if question.typeof == "multiple"
    xml.options :max => question.max_selections, :min => question.min_selections do 
      question.options.each do |option|
        xml.option option
      end
    end
  end
  xml.questionnaires do 
    question.questionnaires.each do |questionnaire|
      xml.questionnaire :id => questionnaire.id
    end
  end 
end
