require 'rails_helper'

RSpec.describe "albums/new", :type => :view do
  before(:each) do
    assign(:album, Album.new(
      :title => "MyString",
      :artist => "MyString",
      :release_date => 1
    ))
  end

  it "renders new album form" do
    render

    assert_select "form[action=?][method=?]", albums_path, "post" do

      assert_select "input#album_title[name=?]", "album[title]"

      assert_select "input#album_artist[name=?]", "album[artist]"

      assert_select "input#album_release_date[name=?]", "album[release_date]"
    end
  end
end
