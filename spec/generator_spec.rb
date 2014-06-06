require 'rspec'
require 'generator'

describe Generator do
  it 'returns half the number of companies as people for the given length' do
    rows = Generator.new(100).generate

    people = rows.map { |p| [p[0], p[1]] }
    expect(people.uniq.size).to eq(100)

    companies = rows.map { |c| [c[2]]}
    expect(companies.uniq.size).to eq(50)
    end
end
