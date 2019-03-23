=begin  
    @Autor: Isaias Silva
    @Descrição: Esta classe, ou essa (PageObject), é utilizada para mapear os objetos da tela
                e criar métodos e ações da tela de diversos.
                @Classe DiversosPage
=end

class DiversosPage < SitePrism::Page
    set_url ''
    
    element :clique_me, 'input[id="buttonSimple"]'
    element :abrir_popup, 'input[id="buttonPopUpEasy"]'
    element :alert, 'input[id="alert"]'
    element :prompt, 'input[id="prompt"]'
    element :bt_cadastrar, 'input[id="elementosForm:cadastrar"]'


    def scrool_down
        execute_script("window.scrollTo(0, document.body.scrollHeight)")
    end

    def clique
        sleep 3
        clique_me.click
        sleep 3
    end

    def open_popup
        abrir_popup.click
        sleep 3
    end

    def alerta
        alert.click
        sleep 3
    end

    def prompt_button
        prompt.click
        sleep 3
    end
end