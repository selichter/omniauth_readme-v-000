require 'rails_helper'

RSpec.describe SessionsController, type: :controller do
  describe 'get create' do
    it 'assigns omniauth data to @auth' do
      auth = {      
        'info' => {
          email: 'Roberto@test.com',
          name: 'Roberto',
        }
      }
      @request.env['omniauth.auth'] = auth
      get :create
      assert assigns(:auth) == auth
    end
  end
end