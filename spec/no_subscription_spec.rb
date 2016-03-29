require 'spec_helper'
 describe NoSubscription do
  describe '#has_mentoring?' do
    it 'returns false' do
      subscription = NoSubscription.new
      expect(subscription.has_mentoring?).to be_false
    end
  end
   describe '#price' do
    it 'returns 0' do
      subscription = NoSubscription.new
      expect(subscription.price).to eq(0)
    end
  end
   describe '#charge' do
    it 'does nothing' do
      subscription = NoSubscription.new
      credit_card = double('credit_card')
      expect { subscription.charge(credit_card) }.not_to raise_error
    end
  end
end