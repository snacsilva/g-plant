require 'rails_helper'

RSpec.describe CorretoresController, type: :controller do

  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  let(:valid_session) { {} }

  describe "GET #index" do
    it "returns a success response" do
      Corretor.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      corretor = Corretor.create! valid_attributes
      get :show, params: {id: corretor.to_param}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "GET #new" do
    it "returns a success response" do
      get :new, params: {}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "GET #edit" do
    it "returns a success response" do
      corretor = Corretor.create! valid_attributes
      get :edit, params: {id: corretor.to_param}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Corretor" do
        expect {
          post :create, params: {corretor: valid_attributes}, session: valid_session
        }.to change(Corretor, :count).by(1)
      end

      it "redirects to the created corretor" do
        post :create, params: {corretor: valid_attributes}, session: valid_session
        expect(response).to redirect_to(Corretor.last)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'new' template)" do
        post :create, params: {corretor: invalid_attributes}, session: valid_session
        expect(response).to be_successful
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested corretor" do
        corretor = Corretor.create! valid_attributes
        put :update, params: {id: corretor.to_param, corretor: new_attributes}, session: valid_session
        corretor.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the corretor" do
        corretor = Corretor.create! valid_attributes
        put :update, params: {id: corretor.to_param, corretor: valid_attributes}, session: valid_session
        expect(response).to redirect_to(corretor)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'edit' template)" do
        corretor = Corretor.create! valid_attributes
        put :update, params: {id: corretor.to_param, corretor: invalid_attributes}, session: valid_session
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested corretor" do
      corretor = Corretor.create! valid_attributes
      expect {
        delete :destroy, params: {id: corretor.to_param}, session: valid_session
      }.to change(Corretor, :count).by(-1)
    end

    it "redirects to the corretors list" do
      corretor = Corretor.create! valid_attributes
      delete :destroy, params: {id: corretor.to_param}, session: valid_session
      expect(response).to redirect_to(corretors_url)
    end
  end

end
