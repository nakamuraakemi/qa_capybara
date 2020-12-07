Quando('acesso a URL') do
    visit('/treinamento/home')
    # sleep(5)
end

Então('eu verifico se estou na página correta') do
    # verificar por elemento ou por URL
    expect(page).to have_current_path('https://automacaocombatista.herokuapp.com/treinamento/home', url: true)    
end