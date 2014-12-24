require_relative 'compare_version'

describe 'compare' do
  it 'returns 1 if v1 > v2' do
    expect(compare_version('1.0', '0.2')).to eq 1
    expect(compare_version('1.1.0', '1.0.2')).to eq 1
  end

  it 'returns -1 if v1 < v2' do
    expect(compare_version('1.0', '1.2')).to eq -1
  end

  it 'returns 0 if v1 = v2' do
    expect(compare_version('1.0', '1.0')).to eq 0
  end

  
  it 'works for versions less than 1' do
    expect(compare_version('0.1', '0.2')).to eq -1
    expect(compare_version('0.1', '0.0.1')).to eq 1
  end

  it 'works for versions with different lengths' do
    expect(compare_version('1', '1.0')).to eq 0
    expect(compare_version('1', '1.1')).to eq -1
    expect(compare_version('1.1', '1')).to eq 1
  end

  it 'works for string with leading 0' do
    expect(compare_version('1', '01')).to eq 0
    expect(compare_version('1.1', '01.2')).to eq -1
  end
end
