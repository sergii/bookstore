FactoryGirl.define do
  factory :book do
    title 'Agile Web Development with Rails'
    isbn 1934356549
    published_at Date.new 2011, 3
    price 43.95
  end
end