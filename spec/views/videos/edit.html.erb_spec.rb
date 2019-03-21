require 'rails_helper'

RSpec.describe "videos/edit", type: :view do
  before(:each) do
    @video = assign(:video, Video.create!(
      :name => "MyString",
      :url => "MyString",
      :view => 1,
      :user => nil
    ))
  end

  it "renders the edit video form" do
    render

    assert_select "form[action=?][method=?]", video_path(@video), "post" do

      assert_select "input[name=?]", "video[name]"

      assert_select "input[name=?]", "video[url]"

      assert_select "input[name=?]", "video[view]"

      assert_select "input[name=?]", "video[user_id]"
    end
  end
end
