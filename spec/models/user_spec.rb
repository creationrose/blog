require 'rails_helper'

describe User do

 it { should have_many_and_belong_to_many :posts }

 it { should have_many :comments }

end
