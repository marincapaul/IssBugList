class Bug < ApplicationRecord
  enum status: {unsolved: 0, taken:1, solved: 2, closed: 3}
  belongs_to :tester
  belongs_to :developer, optional: true
  validates :tester_id, presence: true
end
