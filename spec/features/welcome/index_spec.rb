require 'rails_helper'

RSpec.describe ' Welcome/Index', type: :feature do
  it 'shows the welcome page' do
    visit '/'

    expect(page).to have_text('Welcome to the Century Checklist.')
  end
end
