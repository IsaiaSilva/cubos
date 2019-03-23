Dir[File.join(File.dirname(__FILE__), "../pages/*_page.rb")].each { |file| require file }

    module PageObjects 
        def cad
            @cad ||= CadastrarPage.new           
        end

        def diversos
            @diversos ||= DiversosPage.new 
        end
    end