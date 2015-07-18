class Message < ActiveRecord::Base

  validates :author, presence: true
  validates :content, presence: true
  validates :url, format: {with: /(https?:\/\/)?([\da-z\.-]+)\.([a-z\.]{2,6})([\/\w \.-]*)*\/?/}, :allow_blank => true 

end

