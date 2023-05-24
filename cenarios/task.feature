Funcionalidade: Historia Criar Tasks

    Cenário: Validar realização de login com e-mail e senha

        Dado que o usuario acesse a pagina https://qa-test.avenuecode.io/
        E click em Sign in
        Quando preencher o campo e-mail() e o campo senha()
        E clicar em sign in 
        Então o login deve ser efetuado com sucesso

    Cenário: Validar realização de login com e-mail e senha invalido

        Dado que o usuario acesse a pagina https://qa-test.avenuecode.io/
        E click em Sign in
        Quando preencher o campo e-mail() e o campo senha()
        E clicar em sign in 
        Então o login não deve ser efetuado

    Cenário: Validar visualização do formulario de cadastro de usuário

        Dado que o usuario acesse a pagina https://qa-test.avenuecode.io/
        E click em Register 
        Então deve apresentar o formulario de cadastro para novos usuario

    Cenário: Validar cadastro de usuário

        Dado que o usuario acesse a pagina https://qa-test.avenuecode.io/
        E click em Register 
        Então deve apresentar o formulario de cadastro para novos usuario

    Cenário: Validar visualização do link "My Tasks" 

        Dado que o usuario acesse a pagina https://qa-test.avenuecode.io/
        Então o link  My Tasks deve ficar visivel na barra de navegação

    Cenário: Validar Direcionamento ao clicar neste link "My Tasks"

        Dado que o usuario esteja logado 
        Quando clicar em My Task
        Então o usuário deve ser direcionado para pagina https://qa-test.avenuecode.io/tasks

    Cenário: Validar mensagem parte superior dizendo que a lista pertence para o usuário logado

        Dado que o usuario esteja logado
        E estiver na pagina https://qa-test.avenuecode.io/tasks
        Então a mesagem apresetanda deve conter o nome do usuario logado, dizendo que as tarefas pertecem a ele

    Cenário: Validar criação de uma nova task clicando a tecla enter

        Dado que o usuario esteja logado
        E estiver na pagina https://qa-test.avenuecode.io/tasks
        Quando preencher o campo de criação de task
        E Apetar a tecla enter
        Então a task deve ser criada

    Cenário: Validar criação de uma nova task clicando em (+) adicinar task

        Dado que o usuario esteja logado
        E estiver na pagina https://qa-test.avenuecode.io/tasks
        Quando preencher o campo de criação de task
        E clicar em adicionar Task 
        Então a Task deve ser criada 

        Melhoria: O botão adicionar é o simbolo de "+", nesse caso, poderia aparecer uma mensagem de (add Task) ao colocar o curso do mause em cima do simbolo "+".

    Cenário: Validar limite minimo de caracteres na criação da task

        Dado que o usuario esteja logado
        E estiver na pagina https://qa-test.avenuecode.io/tasks
        Quando digitado menos de 3 caracteres 
        Então a task não deve ser criada por não atingir o limite minimo de caracteres. informando o minimo de caracteres pra ciação da tarefa

        Melhoria: Seria legal apresentar uma mensagem de erro informando o minimo de caracteres pra criação da task.

    Cenário: Validar limite maximo de caracteres na criação da task

        Dado que o usuário esteja logado
        E estiver na pagina https://qa-test.avenuecode.io/tasks
        Quando digitado mais de 250 caracteres pra criação da task
        Então a task não deve ser criada por exceder o limite máximo de caracteres 

        Melhoria: Seria legal apresentar uma mensagem de erro informando o máximo de caracteres pra criação da task.

    Cenário: Validar visualização das tarefas criadas

        Dado que o usuario esteja logado
        E estiver na pagina https://qa-test.avenuecode.io/tasks
        Então O usuário deve visualizar as task criadas

    Cenário: Validar excluir task

        Dado que o usuario esteja logado
        E estiver na pagina https://qa-test.avenuecode.io/tasks
        Quando clicar em remove
        Então a task deve ser excluida 

    Cenário: Validação da task como done

        Dado que o usuario esteja logado
        E estiver na pagina https://qa-test.avenuecode.io/tasks
        E dar o ckeck da task como done 
        Então a task deve está ficar como finalizada
