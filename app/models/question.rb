# == Schema Information
#
# Table name: questions
#
#  id      :integer          not null, primary key
#  text    :text
#  poll_id :integer
#

class Question < ActiveRecord::Base
  validates :text, presence: true

  belongs_to(
    :poll,
    class_name: "Poll",
    foreign_key: :poll_id,
    primary_key: :id
  )
end
