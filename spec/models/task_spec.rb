require 'rails_helper'

RSpec.describe Task, type: :model do
  describe '#truncate_details' do
    it 'should truncate the details of task to 15 chars' do
      task = Task.create!(title: 'Title', details: 'Too many words in details.')
      expect(task.truncate_details).to eq('Too many words i...')
    end
  end
end
