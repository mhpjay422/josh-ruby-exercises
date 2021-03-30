require 'rspec'
require '../lib/pirate'
require './spec_helper'

RSpec.describe Pirate do
  it 'has a name' do
    pirate = Pirate.new('Jane')
    expect(pirate.name).to eq('Jane')
  end

  it 'can have a different name' do
    pirate = Pirate.new('Blackbeard')
    expect(pirate.name).to eq('Blackbeard')
  end

  it 'is a scallywag by default' do
    pirate = Pirate.new('Jane')
    expect(pirate.job).to eq('Scallywag')
  end

  it 'is not always a scallywag' do
    pirate = Pirate.new('Jack', 'cook')
    expect(pirate.job).to eq('cook')
  end

  it 'is not cursed by default' do
    pirate = Pirate.new('Jack')

    expect(pirate.cursed?).to be false

    pirate.commit_heinous_act
    expect(pirate.cursed?).to be false

    pirate.commit_heinous_act
    expect(pirate.cursed?).to be false

    pirate.commit_heinous_act
    expect(pirate.cursed?).to be true
  end

  it 'has a booty' do
    p = Pirate.new("Jimbo")
    # check that the pirate starts with 0 booty
    expect(p.booty).to eq 0
  end

  it 'gets 100 booty for robbing a ship' do
    # create a pirate
    p = Pirate.new("Allexx")
    # rob some ships
    p.rob
    # check that the pirate got 100 booty for each ship it robbed
    expect(p.booty).to eq 100
  end

end
