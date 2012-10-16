class FactController < Rubot::Controller
  command :fact do
    reply "k. got it." if Fact.add(message.text)
  end

  command :free_fact do
    fact = Fact.random
    reply "FACT: #{fact[:fact]}" if fact
  end

end