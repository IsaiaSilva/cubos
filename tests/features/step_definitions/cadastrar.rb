Dado("que estou no formulario campo de treinamento") do                                            
    cad.load           
end           
          
Dado("que eu preencha as informações obrigatórias") do                                            
   # @nome = find_by_id('elementosForm:nome')
   # puts @nome
    cad.preencher_form   
end                                                                                               
                                                                                                    
Quando("eu clico em cadastrar") do                                                                
    cad.enviar_form    
    cad.scrool_down              
end                                                                                               
                                                                                                    
Então("eu verifico que o usuário foi cadastrado") do                                              
    expect(page).to have_content("Cadastrado!")       
    
    @nome         = find_field("elementosForm:nome").value
    @sobrenome    = find_field("elementosForm:sobrenome").value
    @sexo         = find_field("elementosForm:sexo:0").value

    puts(@nome)
    puts(@sobrenome)
    puts(@sexo)
  
    expect(@nome).to eql 'Isaias' 
    expect(@sobrenome).to eql 'Silva' 
    expect(@sexo).to eql 'M' 
end                                                                                               

Dado("que eu não preencha as informações obrigatórias") do
    cad.nao_preencher
    cad.enviar_form
end
  
Então("uma mensagem de validação é exibida.") do    
    text = page.driver.browser.switch_to.alert.text
    expect(text).to eq 'Nome eh obrigatorio'
end