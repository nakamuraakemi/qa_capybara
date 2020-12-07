Quando('eu faço um cadastro') do
    visit('/users/new')
    fill_in(id: 'user_name', with: 'Karina')
    find('#user_lastname').set('Nakamura')
    find('#user_email').send_keys('ka.nakamura@hotmail.com')

    fill_in(id: 'user_address', with: 'Avenida Francisco das Chagas')
    find('#user_university').set('USP')
    find('#user_profile').send_keys('QA')

    fill_in(id: 'user_gender', with: 'Feminino')
    find('#user_age').set('31')

    find('input[value="Criar"]').click    
    
end

Então('verifico se fui cadastrado') do
    texto = find('#notice')
    expect(texto.text).to eq 'Usuário Criado com sucesso'
end