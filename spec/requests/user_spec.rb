require 'rails_helper'

RSpec.describe User, type: :request do
  describe 'GET #index' do
    before(:example) { get users_path }

    it 'is a success' do
      expect(response).to have_http_status(:ok)
    end

    it 'renders \'index\' template' do
      expect(response).to render_template('index')
    end

    it 'has the corresponding placeholder' do
      expect(response.body).to include('Here is the list of all users')
    end
  end
end
