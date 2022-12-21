require 'rails_helper'

RSpec.describe Task, type: :model do
  let(:task) { Task.create!(title: 'Title', details: 'Too many words in details.') }

  describe '#initialize' do
    context 'when correct params are given' do
      it 'creates a Task instance' do
        expect(task.title).to eq('Title')
      end
    end

    context 'when it is not given a title' do
      before { task.title = nil }
      it "is not a valid Task instance" do
        task.valid?
        expect(task.errors.messages).to eq({:title=>["can't be blank"]})
      end
      # it "doesn't create a Task instance" do
      #   expect(task.save!).to raise_error(ActiveRecord::RecordInvalid)
      # end
    end
  end

  describe '#truncate_details' do
    it 'should truncate the details of task to 15 chars' do
      expect(task.truncate_details).to eq('Too many words i...')
    end
  end
end
