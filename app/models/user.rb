class User < ApplicationRecord
  has_many :anecdotes, dependent: :destroy

  def to_s
    pseudonym
  end
end
