class User < ActiveRecord::Base

  has_many :tasks

  def to_s
    username
  end
  
end
