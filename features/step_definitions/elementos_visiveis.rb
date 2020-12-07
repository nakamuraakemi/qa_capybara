Quando('clico no botão') do
    visit('/buscaelementos/botoes')      
    find('#teste').click  
end

Então('verifico se o texto apareceu na tela com sucesso') do    
    page.assert_text(text, 'Você Clicou no Botão!')
    page.has_text?('Você Clicou no Botão!')
    have_text('Você Clicou no Botão!')
end