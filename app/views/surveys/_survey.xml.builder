xml.survey :id => survey.id do
  xml.owner :id => survey.owner_id, :name => survey.owner.name
  xml.questionnaire :id => survey.questionnaire_id
  xml.title survey.questionnaire.title
  xml.responses do
    survey.responses.each do |response|
      xml.response do
        xml.value response.value
        xml << render(:partial => response.question)
      end
    end
  end
end 
