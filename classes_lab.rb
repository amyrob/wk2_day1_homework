#Part A

class Student

  def initialize(input_student_name, input_cohort)
    @student_name = input_student_name
    @cohort = input_cohort
  end

  def student_name()
    return @student_name
  end

  def cohort()
    return @cohort
  end

  def set_update_student_name(name)
    @student_name = name
  end

  def set_update_student_cohort(n)
    @cohort = n
  end

  def talk(message)
    return message
  end

  def say_favourite_language(blah)
   p "What is your favourite language?"
   blah = gets.chomp
   return "Your favourite language is #{blah}"
 end

end

#Part B

class SportsTeam

attr_accessor :team_name, :players, :coach, :points

  def initialize (input_team_name, input_players, input_coach, input_points)
    @team_name = input_team_name
    @players = input_players
    @coach = input_coach
    @points = input_points
  end

  def team_name
    return @team_name
  end

  def players
    return @players
  end

  def coach
    return @coach
  end

  def update_coach(new)
    @coach = new
  end

  def add_new_player(new)
    @players.push(new)
  end

  def find_player(name)
    for player in @players
      if player == (name)
        return player
      end
    end
  end

  def win_or_loose(points,result)
    @points += 3 if result == "win"
    @points += 0 if result == "loose"
  end
end
