require 'rails_helper'

RSpec.describe "albums/edit", :type => :view do
  before(:each) do
    @album = assign(:album, Album.create!(
      :title => "MyString",
      :artist => "MyString",
      :release_date => 1
    ))
  end

  it "renders the edit album form" do
    render

    assert_select "form[action=?][method=?]", album_path(@album), "post" do

      assert_select "input#album_title[name=?]", "album[title]"

      assert_select "input#album_artist[name=?]", "album[artist]"

      assert_select "input#album_release_date[name=?]", "album[release_date]"
    end
  end
end