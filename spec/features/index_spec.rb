# frozen_string_literal: true

feature 'Testing index page' do
  scenario 'View Hello world displayed' do
    visit('/')
    expect(page).to have_content 'Hello World'
  end
end
