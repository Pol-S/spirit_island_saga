require_relative "../app/prose"

describe "prose" do
  it "Given a json files that contains cards, can select a card and have it produce a prose output" do
    # creat a new instance of program
    prose = Prose.new 
    # give spirit card name, will output a prose output
    output = prose.retrieve("Unexpected Tigers")
    # output includes card name
    expect(output).to match /Unexpected Tigers/
  end
  it "Output includes the Name"
  it "Output includes the Speed"
  it "Output includes the Range"
  it "Output includes the Target"
  it "Output includes the Cost"
  it "Output includes the Elements Granted"
  it "Output includes the Effect"
  it "Output includes the card type"

end
