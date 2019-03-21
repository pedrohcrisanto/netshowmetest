FactoryBot.define do
  factory :video do
    name { FFaker::Movie.title }
    url { FFaker::Youtube.embed_url }
    view { FFaker::Random.rand(1..9999999) }
    user { FFaker::Random.rand(1..9999999) }
  end
end
