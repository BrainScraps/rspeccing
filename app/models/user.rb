class User < ActiveRecord::Base
  attr_accessible :age, :bio, :country, :favorite_color, :name
end
