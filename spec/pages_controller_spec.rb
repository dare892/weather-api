require 'rails_helper'

RSpec.describe PagesController do
  it 'fetches api properly' do
    expect(PagesController.new.fetch_info('Seattle').header.code).to eq('200')
  end
end
