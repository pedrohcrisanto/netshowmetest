require 'rails_helper'

RSpec.describe "videos/new", type: :view do
  before(:each) do
    assign(:video, Video.new(
      :name => FFaker::Movie.title,
      :url => FFaker::Youtube.embed_url,
      :view =>  FFaker::Random.rand(1..9999999),
      :user =>  FFaker::Random.rand(1..9999999)
    ))
  end

  it "renders new video form" do
    render

    assert_select "form[action=?][method=?]", videos_path, "post" do

      assert_select "input[name=?]", "video[name]"

      assert_select "input[name=?]", "video[url]"

      assert_select "input[name=?]", "video[view]"

      assert_select "input[name=?]", "video[user_id]"
    end
  end
end
