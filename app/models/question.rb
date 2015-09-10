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

  has_many(
    :answer_choices,
    class_name: "AnswerChoice",
    foreign_key: :question_id,
    primary_key: :id
  )

  belongs_to(
    :poll,
    class_name: "Poll",
    foreign_key: :poll_id,
    primary_key: :id
  )
end
