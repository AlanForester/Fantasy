class Refutation < ActiveRecord::Base
  belongs_to :user
  belongs_to :proposal
end
