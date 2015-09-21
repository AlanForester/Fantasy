class Proposal < ActiveRecord::Base
  belongs_to :user
  has_many :refutations
  validates :idea, presence: true,
            length:  {minimum:  5}
end
