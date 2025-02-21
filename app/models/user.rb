class User < ApplicationRecord
  has_many :anecdote

  def to_s
    pseudonym
  end
end
