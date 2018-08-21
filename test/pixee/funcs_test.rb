require 'test_helper'

class Pixee::FuncsTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Pixee::Funcs::VERSION
  end

  describe 'first_truthy' do
    it 'Should return the first truthy item' do
      truthy = Pixee::Funcs.first_truthy([
                                           nil,
                                           false,
                                           'potato'
                                         ])
      assert_equal 'potato', truthy, 'Expected potato to be returned as the first truthy value'
    end

    it 'should return nil if no truthy items found' do
      truthy = Pixee::Funcs.first_truthy([nil, nil, nil])
      assert_nil truthy, 'Expected nil to be returned'
    end

    it 'should raise if the argument does not respond to each' do
      assert_raises ArgumentError do
        Pixee::Funcs.first_truthy(nil)
      end
    end
  end
end
