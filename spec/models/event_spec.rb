require 'rails_helper'

RSpec.describe Event, type: :model do

  before(:each) do
  @event = FactoryBot.create(:event)
end

it "has a valid factory" do
  # teste toujours tes factories pour voir si elles sont valides
  expect(build(:event)).to be_valid
end

context "validation" do

  it "is valid with valid attributes" do
    expect(@event).to be_a(Event)
  end

  describe "#start_date" do
    it { expect(@event).to validate_presence_of(:start_date) }
  end

  describe "#duration" do
    it { expect(@event).to validate_presence_of(:duration) }
  end

  describe "#title" do
    it { expect(@event).to validate_presence_of(:title) }
  end

  describe "#description" do
    it { expect(@event).to validate_presence_of(:description) }
  end

  describe "#price" do
    it { expect(@event).to validate_presence_of(:price) }
  end

  describe "#title" do
    it { expect(@event).to validate_presence_of(:location) }
  end



end

context "associations" do

  describe "events" do
    it { expect(@event).to have_many(:participants) }
  end

  

end



end
