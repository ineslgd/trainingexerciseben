require 'rails_helper'

RSpec.describe AdoptionsController, type: :request do
  describe "POST #create" do
    it "creates an adoption and redirects to the tree's page" do
      user = FactoryBot.create(:user)
      sign_in user
      tree = FactoryBot.create(:tree)
      adoption = FactoryBot.build(:adoption)

      post "/trees/#{tree.id}/adoptions", :params => { adoption: adoption.attributes }
      expect(assigns(:adoption)).to be_a(Adoption)
      expect(assigns(:adoption)).to be_persisted
      expect(tree.adoptions.count).to eq(1)

      expect(response).to redirect_to("/trees/#{tree.id}")

    end
  end
end
