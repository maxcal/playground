require 'rails_helper'

RSpec.describe User, type: :model do
  it "has many claims" do
    expect {
      subject.claims
    }.to_not raise_error
  end
end
