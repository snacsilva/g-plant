require 'rails_helper'

RSpec.describe LotesController, type: :controller do

  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  let(:valid_session) { {} }

  describe "GET #index" do
    it "returns a success response" do
      Lote.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      lote = Lote.create! valid_attributes
      get :show, params: {id: lote.to_param}, session: valid_session
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
      lote = Lote.create! valid_attributes
      get :edit, params: {id: lote.to_param}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Lote" do
        expect {
          post :create, params: {lote: valid_attributes}, session: valid_session
        }.to change(Lote, :count).by(1)
      end

      it "redirects to the created lote" do
        post :create, params: {lote: valid_attributes}, session: valid_session
        expect(response).to redirect_to(Lote.last)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'new' template)" do
        post :create, params: {lote: invalid_attributes}, session: valid_session
        expect(response).to be_successful
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested lote" do
        lote = Lote.create! valid_attributes
        put :update, params: {id: lote.to_param, lote: new_attributes}, session: valid_session
        lote.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the lote" do
        lote = Lote.create! valid_attributes
        put :update, params: {id: lote.to_param, lote: valid_attributes}, session: valid_session
        expect(response).to redirect_to(lote)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'edit' template)" do
        lote = Lote.create! valid_attributes
        put :update, params: {id: lote.to_param, lote: invalid_attributes}, session: valid_session
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested lote" do
      lote = Lote.create! valid_attributes
      expect {
        delete :destroy, params: {id: lote.to_param}, session: valid_session
      }.to change(Lote, :count).by(-1)
    end

    it "redirects to the lotes list" do
      lote = Lote.create! valid_attributes
      delete :destroy, params: {id: lote.to_param}, session: valid_session
      expect(response).to redirect_to(lotes_url)
    end
  end

end
