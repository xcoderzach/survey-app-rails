xml.instruct!
xml.surveyapp do  
  xml.surveys do 
    @surveys.each do |survey|
      xml << render(:partial => survey)
    end
  end
end  
