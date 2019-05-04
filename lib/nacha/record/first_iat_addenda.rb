# coding: utf-8
require 'nacha/record/base.rb'
require 'nacha/record/addenda_record_type.rb'

module Nacha
  module Record
    class FirstIatAddenda < Nacha::Record::Base
      include AddendaRecordType

      nacha_field :record_type_code, inclusion: 'M', contents: 'C7', position: 1..1
      nacha_field :addenda_type_code, inclusion: 'M', contents: 'C10', position: 2..3
      nacha_field :transaction_type_code, inclusion: 'R', contents: 'Alphameric', position: 4..6
      nacha_field :foreign_payment_amount, inclusion: 'R', contents: 'Alphameric', position: 7..24
      nacha_field :foreign_trace_number, inclusion: 'O', contents: 'Alphameric', position: 25..46
      nacha_field :receiving_company_name, inclusion: 'M', contents: 'Alphameric', position: 47..81
      nacha_field :reserved, inclusion: 'M', contents: 'C      ', position: 84..87
      nacha_field :entry_detail_sequence_number, inclusion: 'M', contents: 'Numeric', position: 88..94
    end
  end
end
