require "rails_helper"

RSpec.describe Idea, type: :model do
  describe "associations" do
    it{ is_expected.to have_many(:comments) }
  end

  describe "validations" do
    it{ is_expected.to validate_presence_of :name }
  end

  it "has a name" do # yep, you can totally use 'it'
    idea = Idea.create!(name: "My Awesome Idea Name") # creating a new idea 'instance'
    second_idea = Idea.create!(name: "My Second Idea Name") # creating another new idea 'instance'
    expect(second_idea.name).to eq("My Second Idea Name") # this is our expectation
  end

  it "has a description" do
    descripion_one = Idea.create!(name: '1', description: "My awesome description", )
    description_second = Idea.create!(name: '1', description: "My second description")
    expect(description_second.description).to eq("My second description")
  end
end
