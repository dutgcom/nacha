require 'spec_helper'

RSpec.describe "Nacha::Record::RckEntryDetail", :nacha_record_type do

  it 'exists' do
    expect { Nacha::Record::RckEntryDetail }.to_not raise_error()
  end

end
