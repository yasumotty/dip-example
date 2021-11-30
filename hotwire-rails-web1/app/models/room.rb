class Room < ApplicationRecord
  has_many :messages
  broadcasts

  def hello(str)
    "hello" + str.each { |s| puts s }
  end
end
