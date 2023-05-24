Funcionalidade: Historia Criar subTasks


    Cenário: Validar visualização do botão 'Gerenciar subtask'

        Dado que o usuario esteja logado
        E estiver na pagina https://qa-test.avenuecode.io/tasks 
        Então nas task criadas deve conter um botão Gerenciar subtask

    Cenário: Validar visualização da quantidade de subtask criada no botão 'Gerenciar subtask'

        Dado que o usuario esteja logado
        E estiver na pagina https://qa-test.avenuecode.io/tasks 
        Então nas task criadas deve conter a quantidade de subtask criadas no botão de gerenciar subtask

    Cenário: Validar acesso a caixa de diálogo modal

        Dado que o usuario esteja logado
        E estiver na pagina https://qa-test.avenuecode.io/tasks
        E clica no botão gerenciar subtask
        Então deve abrir uma caixa dialogo modal

    Cenario: Validar fechamento a caixa de diálogo modal

        Dado que o usuario esteja na caixa de dialogo modal
        E clica no botão close
        Então a caixa de dialogo modal deve ser fechada

    Cenário: Validar informações id e descriço contendo na caixa de diálogo 

        Dado que o usuario esteja logado
        E estiver na pagina https://qa-test.avenuecode.io/tasks
        E clica no botão gerenciar subtask
        Então deve conter o Id da task e a descrição

    Cenário: Validar visualização do formulário para criação da subtask

        Dado que o usuario esteja logado
        E estiver na pagina https://qa-test.avenuecode.io/tasks 
        E clica no botão gerenciar subtask
        Então deve contar o formulário pra criação da subtask

    Cenário: Validar criação de uma nova subtask clicando a tecla enter

        Dado que o usuario esteja logado
        E estiver na pagina https://qa-test.avenuecode.io/tasks
        E clica no botão gerenciar subtask
        Quando preencher o campo de criação de subtask
        E Apetar a tecla enter
        Então a subtask deve ser criada e anexadas na parte inferior do diálogo modal

    Cenário: Validar criação de uma nova subtask clicando no botão adicionar 

        Dado que o usuario esteja logado
        E estiver na pagina https://qa-test.avenuecode.io/tasks
        E clica no botão gerenciar subtask
        Quando preencher o campo de criação de subtask
        E clicar em adicionar 
        Então a subtask deve ser criada e anexadas na parte inferior do diálogo modal

    Cenário: Validar limite maximo de caracteres na criação da subtask

        Dado que o usuário esteja logado
        E estiver na pagina https://qa-test.avenuecode.io/tasks
        E clica no botão gerenciar subtask
        Quando preenchido o campo de criação de subtask com mais de 250 caracteres pra criação da subtask
        Então a subtask não deve ser criada por exceder o limite máximo de caracteres 

    Cenário: Validar obrigatoriedade da data de vencimento na criação da subtask 

        Dado que o usuário esteja logado
        E estiver na pagina https://qa-test.avenuecode.io/tasks
        E clica no botão gerenciar subtask
        Quando preencher o campo de criação de subtask
        E não informa data de vencimento 
        Então a subtask não deve ser criada por exceder o limite máximo de caracteres 

    Cenário: Validar obrigatoriedade do campo descrição na criação da subtask 

        Dado que o usuário esteja logado
        E estiver na pagina https://qa-test.avenuecode.io/tasks
        E clica no botão gerenciar subtask
        Quando preencher o campo de criação de subtask
        E não informa data de vencimento 
        Então a subtask não deve ser criada por exceder o limite máximo de caracteres 

    Cenário: Validar preechimento da data de vencimento com uma data invalida na criação da subtask 

        Dado que o usuário esteja logado
        E estiver na pagina https://qa-test.avenuecode.io/tasks
        E clica no botão gerenciar subtask
        Quando preencher o campo de criação de subtask
        E informa data de vencimento invalida ex: utilizei dd/mm/aaaa
        Então a subtask não deve ser criada por formato da data está invalido

    Cenário: Validar preechimento da data de vencimento com uma data passada na criação da subtask 

        Dado que o usuário esteja logado
        E estiver na pagina https://qa-test.avenuecode.io/tasks
        E clica no botão gerenciar subtask
        Quando preencher o campo de criação de subtask
        E informa data de vencimento passada ex: utilizei 10/02/1990
        Então a subtask não deve ser criada, pois a data informada já passou

    Cenário: Validar Remoção da subtask

        Dado que o usuario esteja na caixa de dialogo modal
        E tenha subtask criadas 
        E o usuario clica no botão Remove Subtask
        Então a subtask deve ser removida

    Cenário: Validar alteração da subtask

        Dado que o usuario esteja na caixa de dialogo modal
        E tenha subtask criadas 
        E o usuario clica no botão Remove Subtask
        Então a subtask deve ser removida