Quando('clico em um botão') do
    visit('/buscaelementos/botoes')
    find('#teste').click
end
  
Então('verifico se o texto desapareceu na tela com sucesso') do
    page.has_text?('Você Clicou no Botão!')
    have_text('Você Clicou no Botão!')

    # clicar para o texto desaparecer
    find('#teste').click

    page.has_no_text?('Você Clicou no Botão!')
end