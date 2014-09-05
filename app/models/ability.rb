class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    if user.role? :student
        can :read, Course
        can :manage, CoursesStudent
      elsif user.role? :instructor
        can :read, User
        can :manage, Course
      elsif user.role? :staff
        can :manage, :all
      end
      
    end
