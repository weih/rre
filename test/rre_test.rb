require 'test_helper'

module Renamer
  class TestRenamer < Minitest::Test
    def setup
      @from = 'rb'
      @to = 'py'
    end

    def test_rename
      Dir.chdir 'test/fixtures'
      Renamer.rename(@from, @to)
      assert_empty Dir.glob("*.#{@from}")
    end

    def teardown
      Renamer.rename(@to, @from)
    end
  end
end
