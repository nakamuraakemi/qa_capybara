Quando('entro no iFrame e preencho os campos') do
    visit('mudancadefoco/iframe')

    #mudar o foco para o iFrame
    within_frame('id_do_iframe') do
        
        # efetuar as ações dentro do frame
        fill_in(id: 'first_name', with: 'Karina')
        fill_in(id: 'last_name', with: 'Nakamura')

    end
end

Quando('entro no modal') do
    visit('mudancadefoco/modal')

    find('a[href="#modal1"]').click    
end

Quando('verifico o texto') do
    within('#modal1') do
        texto = find('h4')            
        expect(texto.text).to eq 'Modal Teste'
    end
end

Quando('fecho o modal') do
    within('#modal1') do
        find('.modal-close').click
        sleep(5)
    end 
end