require 'view_space'
 
describe 'Space' do
  describe '.all' do
    it 'should list a space' do
      space = Space.create(name: 'Makers Cottage', description: 'Great for weekend breaks!', 
        price_per_night: 100, available_from: '2021-09-23', 
        available_to: '2021-10-23')
      spaces = Space.all
      expect(spaces.length).to eq(1)
      expect(spaces.first.name).to eq('Makers Cottage')
      expect(spaces.first).to be_a Space
    end
  end
end
