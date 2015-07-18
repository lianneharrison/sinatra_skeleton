class Message < ActiveRecord::Base

  validates :url, format: {with: /(https?:\/\/)?([\da-z\.-]+)\.([a-z\.]{2,6})([\/\w \.-]*)*\/?/}, :allow_blank => true 
  validates :author, presence: true
  validates :content, presence: true

end

