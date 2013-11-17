describe 'Hello world', ->
  appCtrl = undefined

  beforeEach module('app64')
  beforeEach inject ($controller)->
    appCtrl = $controller('AppCtrl')

  describe 'AppCtrl', ->
    it 'should have a message of hello', ->
      expect(appCtrl.message).toBe('Hello')
