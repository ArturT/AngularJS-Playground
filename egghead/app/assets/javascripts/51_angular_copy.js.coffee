app = angular.module 'app51', []

app.factory 'contacts', ->
  [
    {firstName: 'Jan', lastName: 'Kowalski', phone: '123-456-789'}
    {firstName: 'Wojciech', lastName: 'Nowak', phone: '456-789-123'}
    {firstName: 'Tomasz', lastName: 'Kowalski', phone: '789-123-456'}
  ]

app.controller 'AppCtrl', (contacts) ->
  @contacts = contacts
  @selectedContact = null
  @contactCopy = null

  @selectContact = (contact) ->
    @selectedContact = contact;
    @contactCopy = angular.copy(contact)

  @saveContact = ->
    @selectedContact.firstName = @contactCopy.firstName
