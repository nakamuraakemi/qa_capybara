Quando('acesso a url de botões') do
    visit('/buscaelementos/botoes')
end
  
Então('verifico se encontrei os elementos') do
    #all busca todos os elementos 
    page.all(:css, '.btn') # não é necessário especificar o css

    # busca um elemento mapeado
    find('#teste')

    #busca pelo id
    find_by_id('teste')

    #busca por um botão
    find_button(class: 'btn waves-light')

    #busca o primeiro elemento que contenha o elemento mapeado
    first('.btn')

    #busca por algum link
    #find_link(href: '')
end