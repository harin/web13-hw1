class User
  include Mongoid::Document
  include Mongoid::MultiParameterAttributes

  field :first_name, type: String
  field :last_name, type: String
  field :education, type: String
  field :hobby, type: String
  field :birthday, type: Date
  field :relationship, type: String
end
