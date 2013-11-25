HomeController = require('controllers/home-controller')

describe 'HomeController', ->

  beforeEach ->
    @controller = new HomeController

  it 'does something useful', ->
    expect(@controller).to.be.ok
