require 'rails_helper'

RSpec.describe "videos/show", type: :view do
  before(:each) do
    @video = assign(:video, Video.create!(
      :name => FFaker::Movie.title,
      :url => FFaker::Youtube.embed_url,
      :view => FFaker::Random.rand(1..9999999),
      :user => FFaker::Random.rand(1..9999999)
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(FFaker::Movie.title)
    expect(rendered).to match(FFaker::Youtube.embed_url)
    expect(rendered).to match(FFaker::Random.rand(1..9999999))
    expect(rendered).to match(FFaker::Random.rand(1..9999999))
  end
end
