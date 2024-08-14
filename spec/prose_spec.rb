require_relative "../app/prose"

describe "prose" do
  it "Given a json files that contains cards, can select a card and have it produce a prose output" do
    # create a new instance of program
    prose = Prose.new 
    # give spirit card name, will output a prose output
    output = prose.retrieve("Unexpected Tigers")
    # output includes power name
    expect(output).to match /Unexpected Tigers/
  end


   it "Output includes the name" do
      # create a new instance of program
      prose = Prose.new 
      # give spirit card name, will output a prose output
      output = prose.retrieve("Unexpected Tigers")
      # output includes the expected power name
      expect(output).to match /Unexpected Tigers/
    end

  it "Output includes the Speed" do
    # create a new instance of program
    prose = Prose.new 
    # give spirit card name, will output a prose output
    output = prose.retrieve("Unexpected Tigers")
    # output includes the expected power speed
    expect(output).to match /slow/
  end


  it "Output includes the Range" do
    # create a new instance of program
    prose = Prose.new 
    # give spirit card name, will output a prose output
    output = prose.retrieve("Unexpected Tigers")
    # output includes the expected power range
    expect(output).to match /1/
  end

  it "Output includes the Target" do
    # create a new instance of program
    prose = Prose.new 
    # give spirit card name, will output a prose output
    output = prose.retrieve("Unexpected Tigers")
    # output includes the expected target restriction
    expect(output).to match /any/
  end

  it "Output includes the Cost" do
    # create a new instance of program
    prose = Prose.new 
    # give spirit card name, will output a prose output
    output = prose.retrieve("Unexpected Tigers")
    # output includes the expected target restriction
    expect(output).to match /0/
  end

  it "Output includes the Elements Granted" do
    # create a new instance of program
    prose = Prose.new 
    # give spirit card name, will output a prose output
    output = prose.retrieve("Unexpected Tigers")
    # output includes the expected elements granted
    expect(output).to match /"moon", "fire", "animal"/
  end
  

  it "Output includes the Effect" do
    # create a new instance of program
    prose = Prose.new 
    # give spirit card name, will output a prose output
    output = prose.retrieve("Unexpected Tigers")
    # output includes the expected power effect
    expect(output).to match /"1 Fear if Invaders are present. If you can gather 1 Beasts, do so, then push 1 Explorer. Otherwise, add 1 Beasts."/
  end

  it "Output includes the card type" do
    # create a new instance of program
    prose = Prose.new 
    # give spirit card name, will output a prose output
    output = prose.retrieve("Unexpected Tigers")
    # output includes the expected power type
    expect(output).to match /"innate"/
  end


end
