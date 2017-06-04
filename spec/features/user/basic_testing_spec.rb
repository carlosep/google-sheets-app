require 'rails_helper'

feature 'User tries to create item' do
  scenario 'from sheets index' do
    visit root_path
    click_on "Novo Registro"
    expect(page).to have_content 'Novo Registro'
  end
  scenario 'from itens index' do
    visit root_path
    click_on "Registros"
    expect(page).to have_content 'Todos os registros'
  end
end
