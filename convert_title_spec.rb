require_relative 'convert_title'

describe 'convert' do
  it 'works for letters 1-26' do
    expect(convert 1).to eq 'A'
    expect(convert 8).to eq 'H'
    expect(convert 26).to eq 'Z'
  end
end
