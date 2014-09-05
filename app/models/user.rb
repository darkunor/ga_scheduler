class User < ActiveRecord::Base
  attr_accessible :name, :e_mail, :password, :role
    has_many :enrollments, foreign_key: :student_id
    has_many :courses, through: :enrollments, source: :student
    has_many :courses_instructors, foreign_key: :instructor_id

    has_many :teachings, through: :courses_instructors, source: :course

    has_secure_password
      attr_accessible :e_mail, :password, :password_confirmation
      validates :password, presence: true, on: :create
      validates :e_mail, presence: true
      validates :e_mail, uniqueness: { case_sensitive: false }

    def role? role
      self.role.to_sym == role.to_sym
    end
  end


