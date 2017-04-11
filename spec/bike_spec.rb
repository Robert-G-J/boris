require 'bike'

describe Bike do
it {is_expected.to respond_to :working?} # must check why rspec needs a symbol or in speech marks
end
