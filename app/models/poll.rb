# == Schema Information
#
# Table name: polls
#
#  id        :integer          not null, primary key
#  title     :string           not null
#  author_id :integer
#

class Poll < ActiveRecord::Base
  validates :title, presence: true
  validates :author, presence: true

  has_many(
    :questions,
    class_name: "Question",
    foreign_key: :poll_id,
    primary_key: :id
  )
end
