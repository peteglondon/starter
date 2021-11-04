require "test_helper"

class StartupTest < ActiveSupport::TestCase
  test 'valid with all attributes' do
    startup = Startup.new(name: 'name', description: 'desc')
    assert startup.valid?
  end

  test 'invalid without name' do
    startup = Startup.new(name: nil, description: 'desc')
    assert_not startup.valid?
  end

  test 'invalid without description' do
    startup = Startup.new(name: 'name', description: nil)
    assert_not startup.valid?
  end
end
