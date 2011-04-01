xml.instruct!
xml.surveyapp do 
  xml.classes do
    @class_instances.each do |class_instance| 
      xml << render(:partial => class_instance)
    end
  end
end
