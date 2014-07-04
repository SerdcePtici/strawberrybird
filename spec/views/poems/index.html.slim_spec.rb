require 'rails_helper'

RSpec.describe "poems/index", :type => :view do
  before(:each) do
    assign(:poems, [
      Poem.create!(
        :title => "Title",
        :text => "Text"
      ),
      Poem.create!(
        :title => "Title",
        :text => "Text"
      )
    ])
  end

  it "renders a list of poems" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Text".to_s, :count => 2
  end
end
