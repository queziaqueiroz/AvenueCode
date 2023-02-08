describe('Visitar pagina avenue Code', () => {

  beforeEach(() => {
    cy.visit('https://qa-test.avenuecode.io/')
    cy.contains('Sign In').click();
    cy.get('#user_email').type('kezyantunes@gmail.com');
    cy.get('#user_password').type('Queziaqueiroz123');
    cy.get('.btn').click();
  })

    it('Validar realização de login com e-mail valido', () => {
      cy.get('.alert-info')
      .should('contain', 'Signed in successfully.');
  })

  // it('Validar login com e-mail invalido', () => {
  //   cy.get('.alert')
  //   .should('contain', 'Invalid email or password.');
  // })

  it('Validar visualização do link My Tasks', () => {
    cy.get('body > :nth-child(1)')
      .should('contain', 'My Tasks');
  })

  it('Validar direcionamento ao clicar neste link "My Tasks"', () => {
    cy.get('#my_task').click();
    cy.url()
      .should('include', '/tasks');
    cy.get('h1')
      .should('contain', 'ToDo List');
  })

  it('Validar criação de task com o botão +', () => {
    cy.get('#my_task').click();
    cy.get('#new_task').type('Validação criação nova tasks');
    cy.get('.input-group-addon').click();
    cy.get('.task_container')
      .should('contain', 'Validação criação nova tasks');
  })

  it('Validar limite minimo de caracteres na criação da task', () => {
    cy.get('#my_task').click();
    cy.get('#new_task').type('Te');
    cy.get('.input-group-addon').click();
    cy.get('.task_container')
    .should('contain', 'Te');
    })

it('Validar remoção da task', () => {
   cy.get('#my_task').click();
   cy.get(':nth-child(3) > :nth-child(5) > .btn').click()
   })

it('Validar check box, marcando task como done', () => {
  cy.get('#my_task').click();
  cy.get(':nth-child(1) > .col-md-1 > .ng-valid').check()
  .should('be.checked');
  
  })

})
