require 'rails_helper'

RSpec.describe 'Testing user index page', type: :feature do
  describe 'User' do
    before(:each) do
      @first_user = User.create(name: 'Paul', photo: 'profile.jpg', bio: 'Developer.')
      @second_user = User.create(name: 'Sam', photo: 'profile.jpg', bio: 'Web Developer.')
      @second_user = User.create(name: 'Abayomi', photo: 'profile.jpg', bio: 'Frontend Developer.')

      @first_post = Post.create(author_id: @first_user.id, text: 'post text', title: 'post title')
      @first_post.save
    end

    feature 'User Index page' do
      background { visit users_path }

      scenario 'shows the right content' do
        visit users_path
        sleep(5)
        expect(page).to have_content('Create new post')
      end

      scenario 'See all usernames' do
        expect(page).to have_content('Sam')
        expect(page).to have_content('Abayomi')
        expect(page).to have_content('Paul')
      end

      scenario 'See the number of posts each user has written' do
        expect(page).to have_content('Number of posts : 0')
      end

      scenario 'When I click on a user, I am redirected to that user\'s show page' do
        click_link 'John', match: :first
        expect(current_path).to eq user_path(User.first.id)
      end

      scenario 'See profile picture for each user' do
        expect(page.first('img')['src']).to have_content 'profile.jpg'
      end
    end

    
  end
end