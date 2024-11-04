require 'rails_helper'

RSpec.describe 'Restaurant Owner Registration', type: :system do
  it 'permite que o visitante crie uma conta de dono de restaurante' do
    visit new_restaurant_owner_registration_path

    fill_in 'CPF', with: '123.456.789-00'
    fill_in 'Nome', with: 'Carol'
    fill_in 'Sobrenome', with: 'Luz'
    fill_in 'Email', with: 'carol@example.com'
    fill_in 'Senha', with: 'uma_senha_maneira33'
    click_button 'Criar Conta'

    expect(page).to have_content('Conta criada com sucesso')
    expect(RestaurantOwner.last.email).to eq('carol@example.com')
  end
end