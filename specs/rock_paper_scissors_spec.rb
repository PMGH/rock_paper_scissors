require 'minitest/autorun'
require 'minitest/rg'

require_relative '../models/rock_paper_scissors'


class TestRockPaperScissors < MiniTest::Test

  def setup()
    @game = RockPaperScissors.new()
  end


  def test_rock_wins()
    # arrange
    expected = {
      'player' => 'Player 1',
      'choice' => 'rock'
    }
    # act
    actual = @game.check_win('rock', 'scissors')
    # assert
    assert_equal(expected, actual)

    # arrange
    expected = {
      'player' => 'Player 2',
      'choice' => 'rock'
    }
    # act
    actual = @game.check_win('scissors', 'rock')
    # assert
    assert_equal(expected, actual)

    # arrange
    expected = 'draw'
    # act
    actual = @game.check_win('rock', 'rock')
    # assert
    assert_equal(expected, actual)
  end

  def test_paper_wins()
    # arrange
    expected = {
      'player' => 'Player 1',
      'choice' => 'paper'
    }
    # act
    actual = @game.check_win('paper', 'rock')
    # assert
    assert_equal(expected, actual)

    # arrange
    expected = {
      'player' => 'Player 2',
      'choice' => 'paper'
    }
    # act
    actual = @game.check_win('rock', 'paper')
    # assert
    assert_equal(expected, actual)

    # arrange
    expected = 'draw'
    # act
    actual = @game.check_win('paper', 'paper')
    # assert
    assert_equal(expected, actual)
  end

  def test_scissors_wins()
    # arrange
    expected = {
      'player' => 'Player 1',
      'choice' => 'scissors'
    }
    # act
    actual = @game.check_win('scissors', 'paper')
    # assert
    assert_equal(expected, actual)

    # arrange
    expected = {
      'player' => 'Player 2',
      'choice' => 'scissors'
    }
    # act
    actual = @game.check_win('paper', 'scissors')
    # assert
    assert_equal(expected, actual)

    # arrange
    expected = 'draw'
    # act
    actual = @game.check_win('scissors', 'scissors')
    # assert
    assert_equal(expected, actual)
  end

end
