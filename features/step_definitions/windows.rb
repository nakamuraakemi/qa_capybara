Quando('eu entro na janela e verifico a mensagem') do
    visit('mudancadefoco/janela')

    # variavel janela recebe uma janela aberta pelo link
    janela = window_opened_by do
        click_link('Clique aqui')
    end

    # muda de foco para a janela
    within_window janela do
        expect(current_url).to eq 'https://automacaocombatista.herokuapp.com/mudancadefoco/newwindow'

        @mensagem = find('.red-text.text-darken-1.center')
        expect(@mensagem.text).to eq 'Você Abriu uma nova janela!!'

        janela.close
    end

    # segunda opção
           
    click_link('Clique aqui')

    # muda para a última aba
    switch_to_window windows.last

    expect(current_url).to eq 'https://automacaocombatista.herokuapp.com/mudancadefoco/newwindow'
    @mensagem = find('.red-text.text-darken-1.center')
    expect(@mensagem.text).to eq 'Você Abriu uma nova janela!!'

    windows.last.close

end

Quando('eu entro no alert e verifico foco e acao') do
    
    visit('/mudancadefoco/alert')

    find('button[onclick="jsAlert()"]').click    
    page.accept_alert

    find('button[onclick="jsAlert()"]').click 
    page.dismiss_confirm

    find('button[onclick="jsPrompt()"]').click 
    page.accept_prompt(with: 'Karina Nakamura')
    
    sleep(5)
end