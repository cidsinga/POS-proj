require 'rails_helper'

describe Purchase do
  it { should have_many(:products) }
end
