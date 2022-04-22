Dado('que acesso a tela Botões de Radio') do
    @nav.tap_hamburger
    @nav.tap_by_text("INPUTS")
    @nav.tap_by_text("BOTÕES DE RADIO")
  end
  
  Quando('eu escolho a opção Ruby') do
    @radio_consult = "//android.widget.RadioButton[contains(@text, 'Ruby')]"
    find_element(xpath: @radio_consult).click
  end
  
  Entao('essa opção deve ser marcada') do
    @radio_result = find_element(xpath: @radio_consult)
    expect(@radio_result.checked?).to eql "true" 
    # Verificar o tipo de informação que o framework devolve. 
    # Neste caso a função checked está selecionado como true, mas devolve uma string
  end


Dado('que acesso a tela Checkbox') do
  @nav.tap_hamburger
  @nav.tap_by_text("INPUTS")
  @nav.tap_by_text("CHECKBOX")
end

Quando('eu marco a opção Ruby') do
  @check_consult = "//android.widget.CheckBox[contains(@text, 'Ruby')]"
  find_element(xpath: @check_consult).click
end

Entao('esta opção deve estar marcada') do
  @check_result = find_element(xpath: @check_consult)
  expect(@check_result.checked?).to eql "true" 
end

Quando('eu marco as seguintes techs:') do |table|
  @techs = table.hashes
  log(@techs)
end

Entao('todas essas opções devem estar marcadas') do
  
end