require 'view_space'

describe 'Space' do
  describe '.all' do
    it 'should list a space' do
      space = Space.all(name: 'Makers cottage')
      # expect(space.length).to eq(1)
      expect(space.name).to eq('Makers Cottage')
    end
  end
end