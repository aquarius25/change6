class Group < ApplicationRecord
  has_many :messages
  has_many :user_groups
  has_many :users, through: :user_groups
  validates :name, presence: true


  def show_last_message
    if (last_message = messages.last).present?
      last_message.text? ? last_message.text : "Have a image."
    else
      "No message yet."
    end
  end
end
