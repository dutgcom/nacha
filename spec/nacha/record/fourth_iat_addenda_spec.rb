require 'spec_helper'

RSpec.describe Nacha::Record::FourthIatAddenda, :nacha_record_type do
  it 'exists' do
    expect { Nacha::Record::FourthIatAddenda }.not_to raise_error
  end
end
