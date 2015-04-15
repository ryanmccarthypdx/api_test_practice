require 'rails_helper'

describe "Foo API" do
  it 'retrieves a specific foo' do
    foo = FactoryGirl.create(:foo)
    get "/api/messages/#{foo.id}"

    expect(response).to be_success

    expect(json["name"]).to eq(foo.name)

    expect(json['private_attr']).to eq(nil)
  end
end
