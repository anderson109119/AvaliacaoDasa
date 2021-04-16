class Comum < SitePrism::Page
	
	def validardelboni

		delboni = page.find(:xpath, "//*[@id='overlay']/div[3]/div/div/div/div[1]/div/div[2]/div/h2")
		delboniconverter = delboni.text
		if delboniconverter.eql? "Delboni Auriemo" then nil else raise "LABORATÓRIO INCORRETO" end
	end

	def validarurl

		delboniurl = URI.parse(current_url).to_s
				
		if delboniurl.eql? "https://dasa.com.br/marcas" then 
			nil 
		else raise 
			"URL incorreta" 
		end
	end
end