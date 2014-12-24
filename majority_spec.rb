require_relative 'majority'

describe '#majority_el' do
  it 'works for single element' do
    expect(majority_el([1])).to eq 1
  end

  it 'works for array with two of same element' do
    expect(majority_el([2,2])).to eq 2
  end

  it 'works for 3 element array' do
    expect(majority_el([2, 1, 1])).to eq 1
    expect(majority_el([1, 2, 1])).to eq 1
    expect(majority_el([1, 1, 2])).to eq 1
  end
end
