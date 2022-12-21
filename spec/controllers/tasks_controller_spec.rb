require rails_helper

RSpec.describe TasksController, type: :controller do
  describe '#create' do
    it 'should save an instance of task to the db' do
      params = { task: { title: 'Title', details: 'Details'} }
    end
  end
end
