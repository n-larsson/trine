RSpec.describe Routine, type: :model do
  describe "#name" do
    it "must be present" do
      routine = Routine.new.tap(&:save)
      expect(routine).to have(1).errors_on(:name)
    end
  end

  describe "#tasks" do
    it "has many tasks" do
      task1 = Task.make
      task2 = Task.make
      routine = Routine.make!(tasks: [task1, task2])

      expect(routine.reload.tasks).to eq([task1, task2])
    end
  end

  describe "#assignments" do
    it "has many assignments" do
      assignment1 = RoutineAssignment.make
      assignment2 = RoutineAssignment.make
      routine = Routine.make!(assignments: [assignment1, assignment2])

      expect(routine.reload.assignments).to eq([assignment1, assignment2])
    end
  end
end
