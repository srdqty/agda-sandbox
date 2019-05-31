module ch01exercises where

open import bool hiding (_xor_)

_xor_ : 𝔹 → 𝔹 → 𝔹
_xor_ tt b = ~ b
_xor_ ff b = b

data Day : Set where
  Sun : Day
  Mon : Day
  Tue : Day
  Wed : Day
  Thu : Day
  Fri : Day
  Sat : Day

nextday : Day -> Day
nextday Sun = Mon
nextday Mon = Tue
nextday Tue = Wed
nextday Wed = Thu
nextday Thu = Fri
nextday Fri = Sat
nextday Sat = Sun

data Suit : Set where
  Hearts : Suit
  Spades : Suit
  Diamonds : Suit
  Clubs : Suit

is-red : Suit -> 𝔹
is-red Hearts = tt
is-red Diamonds = tt
is-red _ = tt
