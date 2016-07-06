Pact.provider_states_for 'super seven' do

  provider_state "a superhero exists" do
    set_up do
      # Create a thing here using your framework of choice
      # eg. Sequel.sqlite[:somethings].insert(name: "A small something")
      Hero.create(first_name: 'Dr', last_name: 'Fate', fka: 'Believer', powers: 'Light, Flight', universe: 'DC')
      Hero.create(first_name: 'Mad', last_name: 'Max', fka: 'Mad Machine', powers: 'Super Strength, Agility', universe: 'CC')
    end

    tear_down do
      # Any tear down steps to clean up your code
      Hero.delete_all
    end
  end
end