xml.instruct!
xml.surveyapp do  
  xml.groups do
    @groups.each do |group| 
      xml << render(:partial => group)
    end
  end 
end
