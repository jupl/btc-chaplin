# NOTE: If you run from the browser there may be issues with the should
#   assertion style in Internet Explorer. In that case, use the assert or
#   expect assertion style.

describe 'An array', ->
  array = null

  describe 'that is empty', ->
    before ->
      array = []

    it 'should exist', ->
      should.exist array

    it 'should not be null', ->
      array.should.not.be.null

    it 'should have a length of 0', ->
      array.length.should.equal 0
    
    it 'should return -1 when looking for index of an item in array', ->
      array.indexOf(-1).should.equal -1
      array.indexOf(0).should.equal -1
      array.indexOf(1).should.equal -1