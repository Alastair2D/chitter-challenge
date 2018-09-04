require 'peep'

describe Peep do
  PG.connect(dbname: 'chitter_test')

  describe '#all' do
    it 'returns all peeps' do
      peeps = Peep.all
      expect(peeps).to include('This is my first sql peep!')
    end
  end

  describe '#create' do
    it 'adds a peep to the peep table' do
      Peep.create('This is another peep')
      expect(Peep.all).to include 'This is another peep'
    end
  end

end
