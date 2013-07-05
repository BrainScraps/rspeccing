require 'spec_helper'

describe 'routes the visitor correctly' do
  it "routes people to the users#index for root " do
    expect(:get => "/").to route_to(
    :controller => "users",
    :action => "index" 
    )
    end
    
    it "requests user path" do
      user = User.new(name: "Sumeet", country: "USA", bio: "Being")
      user.save

      expect(get: "/users/#{user.id}").to route_to(
      controller: "users",
      action: "index",
      id: user.id
      )
    end
  end
 
