describe 'An array', ->

  describe 'that is empty', ->
    beforeEach ->
      @array = []

    it 'should exist', ->
      expect(@array).to.exist

    it 'should not be null', ->
      expect(@array).to.not.be.null

    it 'should have a length of 0', ->
      expect(@array).to.have.length 0