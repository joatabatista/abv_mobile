Dado("que eu esteja na tela do aplicativo yetgo") do
@geral = Geral.new
@geral.validar_texto
end

Dado("prencho os campos correpondentes na tela de login") do
@login = Login.new
@login.preencher_cpf_login(MASSA['usuarios']['cpf'])
@login.preencher_senha_login(MASSA['usuarios']['senha'])
@login.clicar_btn_login

end

Então("o login e realizado com sucesso") do

end
