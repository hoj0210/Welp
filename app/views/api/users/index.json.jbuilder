@users.each do |user|
  json.set! user.id do
    json.extract! user, :id, :fname, :lname, :zip_code, :birthday, :profile_pic
  end
end