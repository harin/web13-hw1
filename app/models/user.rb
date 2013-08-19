class User
  include Mongoid::Document
  field :first_name, type: String
  field :last_name, type: String
  field :education, type: String
  field :hobby, type: String
  field :birthday, type: String
  field :relationship, type: String
end
