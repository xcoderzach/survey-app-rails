xml.survey :id => survey.id do
  xml.owner :id => survey.owner_id
  xml.questionnaire :id => survey.owner_id
  xml.responses do
    survey.responses.each do |response|
      xml.response do
        xml.value response.value
        xml.question :id => response.question_id
      end
    end
  end
end 
