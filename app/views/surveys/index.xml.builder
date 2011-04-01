xml.instruct!
xml.surveyapp do  
  xml.surveys do 
    @surveys.each do |survey|
      xml.owner :type => survey.owner_type, :id => survey.owner_id
      xml.questionaire :id => survey.owner_id 
    end
  end
end  
