require 'spec_helper'

RSpec.describe Nacha::Record::ShrAddenda, :nacha_record_type do
  it 'exists' do
    expect { Nacha::Record::ShrAddenda }.not_to raise_error
  end
end
