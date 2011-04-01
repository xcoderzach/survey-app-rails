xml.user :id => user.id do 
  xml.name user.name 
  xml.email user.email 
  xml.group :id => user.group_id 
end 
