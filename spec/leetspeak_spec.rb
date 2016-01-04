require('rspec')
require('leetspeak')

describe('String#leetspeak') do
  it("Replaces the letter 'e' with '3'") do
    expect(("e").leetspeak()).to(eq("3"))
  end
end
