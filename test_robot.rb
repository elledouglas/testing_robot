require 'minitest/autorun'
require 'minitest/pride'
require './robot.rb'

class TestRobot < MiniTest::Test

  def test_that_foreign_robot_neeing_repairs_sent_to_station_1

   robot = Robot.new

   robot.needs_repairs = true
   robot.foreign_model = true

  # assert @robot.station == 2

assert_equal(1, robot.station, "Hi")

  end
#
#   def test_that_vintage_robot_needing_repairs_sent_to_station_2
#     @robot = Robot.new
#     # arrange
# @robot.needs_repairs = true
# @robot.vintage_model = true
#     # act
#  assert @robot.station == 2
#     # assert
#   end
#
def test_that_standard_robot_needing_repairs_sent_to_station_3

  robot = Robot.new

  robot.needs_repairs = true


  assert_equal(3, robot.station)
end

def test_that_robot_in_good_condition_sent_to_station_4
    @robot = Robot.new

    @robot.needs_repairs == false


    assert_equal(4, robot.station)

end

def test_prioritize_tasks_with_empty_todo_list_returns_negative_one

    robot = Robot.new



    assert_equal(-1, robot.prioritize_tasks)
end

  def test_prioritize_tasks_with_todos_returns_max_todo_value
  robot = Robot.new

robot.todos << 1
robot.todos << 2
robot.todos << 3

  assert_equal(3,robot.prioritize_tasks)
  end
#
  def test_workday_on_day_off_returns_false

    # arrange
robot = Robot.new
    # act
robot.day_off = "sunday"

    # assert
assert_equal(false, robot.workday?("sunday"))

  end

  def test_workday_not_day_off_returns_true
  robot = Robot.new

  robot.day_off = "sunday"

  assert_equal(true, robot.workday?("monday"))
  end

end
