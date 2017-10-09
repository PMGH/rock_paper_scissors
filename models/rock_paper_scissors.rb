class RockPaperScissors

  def initialize()
    @winner = {
      'player' => '',
      'choice' => ''
    }
  end

  def check_win(hand1, hand2)
    # evaluate winner
    case hand1
    when 'rock'
      if hand2 == 'scissors'
        return player1_wins(hand1)
      elsif hand2 == 'paper'
        return player2_wins(hand2)
      end
    when 'scissors'
      if hand2 == 'paper'
        return player1_wins(hand1)
      elsif hand2 == 'rock'
        return player2_wins(hand2)
      end
    when 'paper'
      if hand2 == 'rock'
        return player1_wins(hand1)
      elsif hand2 == 'scissors'
        return player2_wins(hand2)
      end
    end

    return "draw"

  end

  def player1_wins(choice)
    @winner['player'] = 'Player 1'
    @winner['choice'] = choice
    return @winner
  end

  def player2_wins(choice)
    @winner['player'] = 'Player 2'
    @winner['choice'] = choice
    return @winner
  end

end
