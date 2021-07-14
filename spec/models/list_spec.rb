require 'rails_helper'

RSpec.describe List, type: :model do

  subject(:happy_list) {List.new(title: "Chores")}
  subject(:sad_list) {List.new(title: nil)}

  it "is valid and has a title attribute" do 
    expect(happy_list).to be_valid
    expect(happy_list.attributes).to include("title")
  end

  it "is not valid without a title" do
    expect(sad_list).to_not be_valid
  end

  it "has many tasks" do 
    expect(List.reflect_on_association(:tasks).macro).to eq(:has_many)
  end

  # has a search method
  
end
