class Task < ApplicationRecord

  validates :title, presence: true, length: { minimum: 3 }
  validates :body, presence: true, length: { minimum: 5 }

  enum category: { privates: 0, business: 1 }
  enum status: { incomplete: 0, complete: 1 }

  belongs_to :user
  belongs_to :schedule

end
