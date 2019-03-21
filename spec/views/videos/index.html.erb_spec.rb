require 'rails_helper'

RSpec.describe "videos/index", type: :view do
  before(:each) do
    assign(:videos, [
      Video.create!(
        :name => FFaker::Movie.title,
        :url => FFaker::Youtube.embed_url,
        :view => FFaker::Random.rand(1..9999999),
        :user => FFaker::Random.rand(1..9999999)
      ),
      Video.create!(
        :name => FFaker::Movie.title,
        :url => FFaker::Youtube.embed_url,
        :view => FFaker::Random.rand(1..9999999),
        :user => FFaker::Random.rand(1..9999999)
      )
    ])
  end

  it "renders a list of videos" do
    render
    assert_select "tr>td", :text => FFaker::Movie.title.to_s, :count => 2
    assert_select "tr>td", :text => FFaker::Youtube.embed_url.to_s, :count => 2
    assert_select "tr>td", :text => FFaker::Random.rand(1..9999999).to_s, :count => 2
    assert_select "tr>td", :text => FFaker::Random.rand(1..9999999).to_s, :count => 2
  end
end
