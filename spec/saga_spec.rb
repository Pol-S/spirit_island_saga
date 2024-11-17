require_relative "../app/saga"

describe "saga" do
  it "Given a json files that contains cards, can select a card and have it produce a saga output" do
    # create a new instance of program
    saga = Saga.new("A B")
    # give spirit card name, will output a saga output
    output = saga.card("Unexpected Tigers")
    # output includes power name
    expect(output).to match /Unexpected Tigers/
  end
  
  it "Given a Spirit name and a location, can save it on the board and produce a saga output" do
    # create a new instance of program
    saga = Saga.new("A B")
    # give spirit card name, will output a saga output
    output = GameState.save_presence("A", "1", "Grinning Trickster Stirs Up Trouble")
    # output includes power name
    expect(output).to match ["Grinning Trickster Stirs Up Trouble"]
  end

  it "Output includes the name" do
    # create a new instance of program
    saga = Saga.new("A")
    # give spirit card name, will output a saga output
    output = saga.card("Unexpected Tigers")
    # output includes the expected power name
    expect(output).to match /Unexpected Tigers/
  end

  it "Output includes the Speed" do
    # create a new instance of program
    saga = Saga.new("A")
    # give spirit card name, will output a saga output
    output = saga.card("Unexpected Tigers")
    # output includes the expected power speed
    expect(output).to match /slow/
  end


  it "Output includes the Range" do
    # create a new instance of program
    saga = Saga.new("A")
    # give spirit card name, will output a saga output
    output = saga.card("Unexpected Tigers")
    # output includes the expected power range
    expect(output).to match /1/
  end

  it "Output includes the Target" do
    # create a new instance of program
    saga = Saga.new("A")
    # give spirit card name, will output a saga output
    output = saga.card("Unexpected Tigers")
    # output includes the expected target restriction
    expect(output).to match /any/
  end

  it "Output includes the Cost" do
    # create a new instance of program
    saga = Saga.new("A")
    # give spirit card name, will output a saga output
    output = saga.card("Unexpected Tigers")
    # output includes the expected target restriction
    expect(output).to match /0/
  end

  it "Output includes the Elements Granted" do
    # create a new instance of program
    saga = Saga.new("A")
    # give spirit card name, will output a saga output
    output = saga.card("Unexpected Tigers")
    # output includes the expected elements granted
    expect(output).to match /"moon", "fire", "animals"/
  end
  

  it "Output includes the Effect" do
    # create a new instance of program
    saga = Saga.new("A")
    # give spirit card name, will output a saga output
    output = saga.card("Unexpected Tigers")
    # output includes the expected power effect
    expect(output).to match /1 Fear if Invaders are present. If you can gather 1 Beasts, do so, then push 1 Explorer. Otherwise, add 1 Beasts./
  end

  it "Output includes the card type" do
    # create a new instance of program
    saga = Saga.new("A")
    # give spirit card name, will output a saga output
    output = saga.card("Unexpected Tigers")
    # output includes the expected power type
    expect(output).to match /innate/
  end

  it "Given a json files that contains spirits, can select a spirit and have it produce a saga output" do
    # create a new instance of program
    saga = Saga.new("A")
    # give spirit name, will output a saga output
    output = saga.spirit("Grinning Trickster Stirs Up Trouble")
    # output includes the expected spirit
    expect(output).to match /Grinning Trickster Stirs Up Trouble/
  end

  it "Given a json files that contains invaders, can select an invader and have it produce a saga output" do
    # create a new instance of program
    saga = Saga.new("A")
    # give spirit name, will output a saga output
    output = saga.invader("England")
    # output includes the expected spirit
    expect(output).to match /England/
  end

  it "Given a json files that contains boards, can select a land and have it produce a saga output" do
    # create a new instance of program
    saga = Saga.new("A")
    # give spirit name, will output a saga output
    output = saga.land("1")
    # output includes the expected spirit
    expect(output).to eq({
       :adjacencies => [2, 4, 5, 6],
       :coastal => true,
       :name => "A1",
       :start_tokens => ["Beasts"],
       :terrain => "mountains",
       :tokens => []
      })
  end

  it "Given a card, a spirit and land information, can produce a sentence" do
    #create a new instance of program
    saga = Saga.new("A")
    #give card, spirit and invader, will output a sentence
    output = saga.action("Unexpected Tigers", [saga.land("1"), saga.land("3")], [saga.land("2")])
    #output should contain expected information 
    expect(output).to match /With its presence in the western wetlands, Grinning Trickster Stirs Up Trouble effortlessly called forth Unexpected Tigers upon the neighboring mountains, gathering the power of the moon, of fire, and of animals and invoking anxiety within the explorers there. From the neighboring jungle, the beasts roamed in, driving a few explorers out back to the nearby wetlands./
  end
end
