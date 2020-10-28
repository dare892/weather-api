require 'rails_helper'

RSpec.describe User do
  it 'saves user' do
    user_count = User.count
    User.create(email: 'sample@example.com', password: '123123')
    expect(User.count).to eq(user_count+1)
  end
end
