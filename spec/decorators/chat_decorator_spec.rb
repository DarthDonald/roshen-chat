require 'rails_helper'

RSpec.describe ChatDecorator do

  describe '#as_json' do
    let(:chat) { stub_model Chat, name: 'Test chat', admin_id: '4', user_ids: ['1', '3', '5'] }

    subject { chat.decorate.as_json}

    its([:name]) { should eq 'Test chat' }

    its([:admin]) { should eq '4' }

    its([:users]) { should eq ['1', '3', '5'] }
  end
end
