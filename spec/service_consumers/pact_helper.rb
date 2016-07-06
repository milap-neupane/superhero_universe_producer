require 'pact/provider/rspec'
require './spec/service_consumers/provider_states_for_my_service_consumer.rb'

Pact.service_provider "super seven" do

  honours_pact_with 'superhero universe' do

    # This example points to a local file, however, on a real project with a continuous
    # integration box, you would use a [Pact Broker](https://github.com/bethesque/pact_broker) or publish your pacts as artifacts,
    # and point the pact_uri to the pact published by the last successful build.

    pact_uri '../superhero_universe/spec/pacts/super_seven-superhero_universe.json'
  end
end