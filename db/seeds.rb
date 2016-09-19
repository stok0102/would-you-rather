question_list = [
  ["be without elbows", "be without knees"],
  ["have to sneeze but not be able to", "have something stuck in your eye for a year"],
  ["have a head the size of a tennis ball", "have a head the size of a watermelon"],
  ["live forever", "die in the next five minutes"],
  ["have one get out of jail free card", "have a key that opens any door"],
  ["be forced to dance to any song you hear", "sing aloud every song you hear"]
]

question_list.each do |a, b|
  Question.create( option_one: a, option_two: b, option_one_votes: 0, option_two_votes: 0)
end
