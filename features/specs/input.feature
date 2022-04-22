#language: pt

Funcionalidade: Inputs

    @Radio
    Cenario: Radio Button

        Dado que acesso a tela Botões de Radio
        Quando eu escolho a opção Ruby
        Entao essa opção deve ser marcada
    
    @Checkbox
    Cenario: Checkbox
        Dado que acesso a tela Checkbox
        Quando eu marco a opção Ruby
        Entao esta opção deve estar marcada

    @Checkbox2
    Cenario: Todas as techs que usam o Appium
        Dado que acesso a tela Checkbox
        Quando eu marco as seguintes techs:
            |tech|
            |Ruby|
            |Java|
            |Python|
            |Javascript|
            |C#|
            |Robot Framework|
        Entao todas essas opções devem estar marcadas