class User < ApplicationRecord
  has_many :anecdotes

  def to_s
    pseudonym
  end
end
