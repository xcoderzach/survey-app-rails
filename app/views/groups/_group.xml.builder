xml.group :id => group.id do
  xml.name group.name
  xml.class :id => group.class_instance_id
  xml.users do
    group.students.each do |student|
      xml << render(:partial => "users/user", :locals => {:user => student})
    end
  end
end 
