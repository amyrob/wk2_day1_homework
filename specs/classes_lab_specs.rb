require('minitest/autorun')
require_relative('../classes_lab')

#Part A

class TestStudent < MiniTest::Test

  def setup
    @student = Student.new("Amy", 19)
  end

  def test_student_name
    student_name = @student.student_name()
    assert_equal("Amy", student_name)
  end

  def test_cohort
    cohort = @student.cohort()
    assert_equal(19, cohort)
  end

  def test_set_update_student__name
    @student.set_update_student_name("Michaela")

    student_name = @student.student_name()
    assert_equal("Michaela", student_name)
  end

  def test_set_update_student__cohort
    @student.set_update_student_cohort(20)

    cohort = @student.cohort()
    assert_equal(20, cohort)
  end

  def test_student_talks()
    hello = @student.talk("I can talk!")
    assert_equal("I can talk!", hello)
  end

  def test_student_language()
    favourite = @student.say_favourite_language("ruby")
    assert_equal("Your favourite language is ruby", favourite)
  end


end


#Part B

class TestSportsTeam < MiniTest::Test

  def setup

    @sports_team = SportsTeam.new("Hearts",
    ["Robbo", "McCann", "Locke"],
    "JJ", 0)
  end

  def test_team_name
    team_name = @sports_team.team_name
    assert_equal("Hearts", team_name)
  end

  def test_players
    players = @sports_team.players
    assert_equal(["Robbo", "McCann", "Locke"], players)
  end

  def test_coach
    coach = @sports_team.coach
    assert_equal("JJ", coach)
  end

  def test_update_coach
    @sports_team.update_coach("Michaela")

    coach = @sports_team.coach
    assert_equal("Michaela", coach)
  end

  def test_add_new_player
    new_player = @sports_team.add_new_player("Robbo Jr")
    assert_equal(["Robbo", "McCann", "Locke", "Robbo Jr"], new_player)
  end

  def test_find_player
    player = @sports_team.find_player("McCann")
    assert_equal("McCann", player)
  end

  def test_win_or_loose
    points = @sports_team.win_or_loose(0, "win")

    new_points = @sports_team.points()
    assert_equal(3, new_points)
  end
end
