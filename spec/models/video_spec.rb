require 'rails_helper'

RSpec.describe Video, type: :model do
  it "Testar Model Video" do
    video = create(:name, :url, :view, :user)
    expect(video).to be_valid
  end
end
