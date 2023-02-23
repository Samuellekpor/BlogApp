# require 'rails_helper'
#
# RSpec.describe Post, type: :request do
#   describe 'GET #index' do
#     before(:example) { get user_posts_path(1) }
#
#     it 'is a success' do
#       expect(response).to have_http_status(:ok)
#     end
#
#     it 'renders \'index\' template' do
#       expect(response).to render_template('index')
#     end
#
#     it 'has the corresponding placeholder' do
#       expect(response.body).to include('Here is the list of all posts of a given user')
#     end
#   end
#
#   describe 'GET #show' do
#     before(:example) { get user_post_path(1, 1) }
#
#     it 'is a success' do
#       expect(response).to have_http_status(:ok)
#     end
#
#     it 'renders \'show\' template' do
#       expect(response).to render_template('show')
#     end
#
#     it 'has the corresponding placeholder' do
#       expect(response.body).to include('Here is the post chosen from the user')
#     end
#   end
# end
