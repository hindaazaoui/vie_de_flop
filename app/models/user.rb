class User < ApplicationRecord
<<<<<<< HEAD
  has_many :anecdotes
=======
  has_many :anecdotes, dependent: :destroy
>>>>>>> c0296e4f339d2725c71ea54cfbd41afb62c6ca2d

  def to_s
    pseudonym
  end
end
