require 'rails_helper'

RSpec.describe Api::ChatsController, type: :controller do

	it { should route(:post, 'api/chats').to(action: :create) }

	describe '#create.json' do
    let(:params) do
      {
        name: 'Test chat',
        admin_id: '4',
        user_ids: "1, 3, 5, 7"
      }
    end

  	let(:chat) { stub_model Chat }

  	before { expect(Chat).to receive(:new).with(params).and_return(chat) }

    before { expect(chat).to receive(:save!) }

    before { post :create, chat: params, format: :json }

    it { should render_template :create }
  end
end