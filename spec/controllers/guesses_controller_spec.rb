require 'rails_helper'

RSpec.describe GuessesController, type: :controller do
  # One known user
  let(:user) { FactoryGirl.create(:user) }

  describe "GET #index" do
    let!(:guesses) { [FactoryGirl.create(:guess, user: user)] }

    context "signed in" do
      before { sign_in(user) }

      it "assigns all values as @values" do
        get :index, {}
        expect(assigns(:guesses)).to eq(guesses)
      end
    end

    context "not signed in" do
      it do
        get :index, {}
      end
    end
  end
end
