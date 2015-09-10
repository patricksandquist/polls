class Poll < ActiveRecord::Base
  validates title: presence: true
  validates author: presence: true

  has_many(
    :questions,
    class_name: "Question",
    foreign_key: :poll_id,
    primary_key: :id
  )
end
