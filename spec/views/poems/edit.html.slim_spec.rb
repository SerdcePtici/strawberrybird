require 'rails_helper'

RSpec.describe "poems/edit", :type => :view do
  before(:each) do
    @poem = assign(:poem, Poem.create!(
      :title => "MyString",
      :text => "MyString"
    ))
  end

  it "renders the edit poem form" do
    render

    assert_select "form[action=?][method=?]", poem_path(@poem), "post" do

      assert_select "input#poem_title[name=?]", "poem[title]"

      assert_select "input#poem_text[name=?]", "poem[text]"
    end
  end
end
