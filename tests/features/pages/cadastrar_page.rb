=begin  
    @Autor: Isaias Silva
    @Descrição: Esta classe, ou essa (PageObject), é utilizada para mapear os objetos
                e criar métodos e ações da tela de de cadastro do campo de treinamento.
                @Classe CadastrarPage
=end

class CadastrarPage < SitePrism::Page
    set_url ''
    
    element :nome, 'input[id="elementosForm:nome"]'
    element :sobrenome, 'input[name="elementosForm:sobrenome"]'
    element :sexo_m, 'input[id="elementosForm:sexo:0"]'
    element :sexo_f, 'input[id="elementosForm:sexo:1"]'
    element :carne, 'input[id="elementosForm:comidaFavorita:0"]'
    element :pizza, 'input[id="elementosForm:comidaFavorita:2"]'

    element :escolaridade, 'select[id="elementosForm:escolaridade"]'
    element :superior, 'option[value="superior"]'
    element :doutorado, 'option[value="doutorado"]'

    element :esportes, 'select[id="elementosForm:esportes"]'
    element :futebol, 'option[value="futebol"]'

    element :sugestoes, 'textarea[id="elementosForm:sugestoes"]'
    element :bt_cadastrar, 'input[id="elementosForm:cadastrar"]'

    
    def preencher_form
        nome.set 'Isaias'
        sobrenome.set 'Silva'
        sexo_m.click
        carne.click
        pizza.click

        #componente -> combobox
        escolaridade.click
        sleep 2
        superior.click
        sleep 2

        #componente -> multipla escolha
        #esportes.click    
        futebol.click
        sleep 2
        
        sugestoes.set 'Automação com Ruby + Capybara + SitePrism é muito divertido'
        sleep 2
    end

    def nao_preencher
        nome.set ''
        sleep 2
        sobrenome.set ''
        sleep 2
    end

    def enviar_form
        bt_cadastrar.click
        sleep 2
    end

    def scrool_down
        execute_script("window.scrollTo(0, document.body.scrollHeight)")
    end
end