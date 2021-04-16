Dado (/^que eu acesse o site da Dasa$/) do

	@home=Home.new
	@home.acessar
end

Quando (/^eu clicar em nossa marca$/) do

	@elementos=Elementos.new
	@elementos.clicklink
end

E (/^selecionar o laboratório$/) do

	@elementos.selecionarlaboratorio
end

E (/^validar o laboratório delboni$/) do

	@comum=Comum.new
	@comum.validardelboni	
end

Então (/^o site delboni é validado co sucesso$/) do

	@comum=Comum.new
	@comum.validarurl	
end

