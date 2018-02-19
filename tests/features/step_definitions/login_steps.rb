
Dado("que eu tenho um usuário com os seguintes atributos:") do |table|
    @login = table.rows_hash['login']
    @password = table.rows_hash['senha']
  end
  
  Quando("faço login") do
    visit '/login'
    find('input[name="name"]').set @login
    find('input[name="password"]').set @password
    find(:css, 'div.box-login form  button').click
    sleep (5)
  end
  
  Então("vejo a tela inicial com a mensagem {string}") do |string|
    saudacao = find( ".limit .dropdown .icon-text").text
    expect(saudacao).to eql string
  end