require "spec_helper"

describe Task do
  it 'is invalid without a name' do
    task = Task.new
    task.should_not be_valid
  end

  it 'can be complete' do
    task = Task.create!({:name => 'Take out the trash'})
    task.complete
    task.completed?.should be_true
  end
end
