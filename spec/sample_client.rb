require File.dirname(__FILE__) + "/../lib/petite_lettre"

PetiteLettre.receive do |message|
  message[:a] / message[:b]
end
