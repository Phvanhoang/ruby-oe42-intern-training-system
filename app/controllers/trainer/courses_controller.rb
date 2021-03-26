class Trainer::CoursesController < TrainersController
  def index
    @courses = Course.all
  end
end
