require 'rails_helper'

RSpec.describe "hospitals/show", type: :view do
  before(:each) do
    assign(:hospital, Hospital.create!(
      name: "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
