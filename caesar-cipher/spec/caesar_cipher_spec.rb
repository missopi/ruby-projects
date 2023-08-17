require './lib/caesar_cipher'

describe '#caesar_cipher' do
  it 'returns a coded version of a lowercase word' do
    expect(caesar_cipher('hello')).to eql('nkrru')
  end

  it 'returns a coded version of a uppercase and lowercase word' do
    expect(caesar_cipher('HEllo')).to eql('NKrru')
  end

  it 'returns a coded word including numbers' do
    expect(caesar_cipher('Hello123')).to eql('Nkrru789')
  end

  it 'returns a coded word without changing symbols' do
    expect(caesar_cipher('Hello()')).to eql('Nkrru()')
  end

  it 'returns a coded word that includes spaces' do
    expect(caesar_cipher('hello HELLO')).to eql('nkrru NKRRU')
  end
end