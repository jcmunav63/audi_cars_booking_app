require 'rails_helper'

RSpec.describe 'users/edit', type: :view do
  let(:user) do
    User.create!(
      email: 'MyString',
      name: 'MyString',
      password: 'MyString'
    )
  end

  before(:each) do
    assign(:user, user)
  end

  it 'renders the edit user form' do
    render

    assert_select 'form[action=?][method=?]', user_path(user), 'post' do
      assert_select 'input[name=?]', 'user[email]'

      assert_select 'input[name=?]', 'user[name]'

      assert_select 'input[name=?]', 'user[password]'
    end
  end
end
