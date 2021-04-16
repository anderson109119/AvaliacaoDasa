class Elementos < SitePrism::Page

	def clicklink

		linknossamarca = page.find(:xpath, "//*[@id='myNavbar']/ul/li[2]/a").click
	end

	def selecionarlaboratorio

		abrirfiltro = page.find(:id,"open-close").click
		selecionarregiao = page.find(:css, "#region > option:nth-child(2)").click
		selecionardelboni = page.find(:xpath,"//*[@id='block-28']/div[2]/div[2]/div/a/img").click				
	end
end