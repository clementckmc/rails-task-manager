require 'rails_helper'

RSpec.describe Task, type: :model do
  describe '#initialize' do
    it 'creates a Task instance' do
      Task.create!(title: 'Title', details: 'Too many words in details.')
      expect(Task.last.title).to eq('Title')
    end

    it "doesn't create a Task when not given a title" do
      task = Task.new(details: 'Too many words in details.')
      task.valid?
      expect(task.errors.messages).to eq({:title=>["can't be blank"]})
    end
  end


  describe '#truncate_details' do
    it 'should truncate the details of task to 15 chars' do
      task = Task.create!(title: 'Title', details: 'Too many words in details.')
      expect(task.truncate_details).to eq('Too many words i...')
    end
  end
end
