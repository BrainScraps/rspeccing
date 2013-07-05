require 'spec_helper'

describe User do
  it "signs_up" do
    user = User.new(name: "Baylee Feore", age: 27, bio: "This is a great bio about Baylle's life", country: "USA")
    user.save

    users = User.all
    expect(users).to include(user)
  end

  it "signs up without a bio" do
    user = User.new(name: "Tom", age: 2, country: "USA")

    expect(user.valid?).to be_false
  end
end
