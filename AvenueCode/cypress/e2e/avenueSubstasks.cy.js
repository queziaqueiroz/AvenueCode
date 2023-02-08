describe('Validações Subtasks', () => {
    beforeEach(() => {
      cy.visit('https://qa-test.avenuecode.io/')
      cy.contains('Sign In').click();
      cy.get('#user_email').type('kezyantunes@gmail.com');
      cy.get('#user_password').type('Queziaqueiroz123');
      cy.get('.btn').click();
      cy.get('#my_task').click();
    })
    it('Validar visualização do botão Gerenciar subtask', () => {
      cy.get('body')
        .should('contain', 'Manage Subtasks');
    })

    it('Validar acesso a caixa de diálogo modal', () => {
      cy.contains('lembrar de fazer as validações');
      cy.get(':nth-child(4) > :nth-child(4) > .btn').click();
      cy.get('.modal').should('be.visible')
    })

    it('Validar acesso a caixa de diálogo modal', () => {
      cy.get(':nth-child(4) > :nth-child(4) > .btn').click();
      cy.get('.modal-footer > .btn').click();
    })

    it('Validar informações na caixa de diálogo, "id, descrição e formulario de criação de subtasks"', () => {
        cy.get(':nth-child(3) > :nth-child(4) > .btn').click();
        cy.get('.modal-title').should('be.visible');
        cy.get('#edit_task').should('be.visible');
        cy.get('.panel-body').should('contain', 'SubTask Description');
        cy.get('.panel-body').should('contain', 'Due Date');
    })
  
    it('Validar criação de uma nova subtask clicando no botão adicionar', () => {
        cy.get(':nth-child(3) > :nth-child(4) > .btn').click();
        cy.get('#new_sub_task').type('Validação subtasks');
        cy.get(':nth-child(2) > .input-group').clear()
            .type('10/02/2023');
        cy.get('#add-subtask').click();
        cy.get('[ng-show="task.sub_tasks.length"]').should('contain','Validação subtasks')
    })
  
    it('Validar remoção de SubTask', () => {
        cy.get(':nth-child(3) > :nth-child(4) > .btn').click();
        cy.get('tbody > :nth-child(1) > :nth-child(3) > .btn').click();
        cy.get('[ng-show="task.sub_tasks.length"]')
    })
  })
  