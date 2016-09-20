FactoryGirl.define do
  factory :comment do
    content "MyString"
    question nil
  end
  factory :question do
    option_one 'never use toilet paper again'
    option_two 'not have a butthole'
    option_one_votes 0
    option_two_votes 0
    category 'butt stuff'
  end
end
