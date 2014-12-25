require_relative 'convert_title'

describe 'convert' do
  it 'works for letters 1-26' do
    expect(convert 1).to eq 'A'
    expect(convert 8).to eq 'H'
    expect(convert 26).to eq 'Z'
  end

  it 'works for letters 27-52' do
    expect(convert 27).to eq 'AA'
    expect(convert 31).to eq 'AE'
    expect(convert 52).to eq 'AZ'
  end
   
  it 'works through ZZ' do
    expect(convert 53).to eq 'BA'
    expect(convert 78).to eq 'BZ'
    expect(convert 79).to eq 'CA'
    expect(convert 676).to eq 'YZ'
    expect(convert 677).to eq 'ZA'
    # 26 * 27 = 702
    expect(convert 702).to eq 'ZZ'
  end
  
  it 'works for 3-letter columns' do
    expect(convert 703).to eq 'AAA'
    expect(convert 704).to eq 'AAB'
    expect(convert 729).to eq 'ABA'
    # 26 * 26 * 27 = 18252
    expect(convert 18252).to eq 'ZYZ'
    expect(convert 18253).to eq 'ZZA'
    # 26 + 26**2 + 26**3 = 18278
    expect(convert 18278).to eq 'ZZZ'
  end

  it 'works for 4-letter columns' do
    expect(convert 18279).to eq 'AAAA'
  end

end
