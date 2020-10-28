require 'rails_helper'

RSpec.describe PagesController do
  it 'fetches api properly' do
    expect(PagesController.new.fetch_info('Provo').header.code).to eq('200')
  end
end
