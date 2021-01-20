#json.partial! 'api/users/user', user: @user
json.extract! @user, :id, :fname, :lname, :zip_code, :birthday