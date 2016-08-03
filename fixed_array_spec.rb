require_relative 'fixed_array'

describe "FixedArray" do
	let(:my_array) { [FixedArray.new(size: 5)] }

	it 'has a readable size and data' do
		expect(my_array.size).to eq 5
	end
end
