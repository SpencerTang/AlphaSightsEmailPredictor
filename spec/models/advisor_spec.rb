require 'rails_helper'

RSpec.describe Advisor, :type => :model do
  it "should return a correct alphasights email" do
    expect(Advisor.predict_email(@email1)[0]).to eq('peter.wong@alphasights.com')
  end

  it "should return an array of 2 email options" do
    expect(Advisor.predict_email(@email2)).to eq(["craig.s@google.com", "c.silverstein@google.com"])
  end

  it "should return a correct apple email" do
    expect(Advisor.predict_email(@email3)[0]).to eq('s.w@apple.com')
  end

  it "should return an empty array if there is no prediction" do
    expect(Advisor.predict_email(@email4)).to eq([])
  end

end