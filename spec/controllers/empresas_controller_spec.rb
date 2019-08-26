require 'rails_helper'

RSpec.describe EmpresasController, type: :controller do

  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  let(:valid_session) { {} }

  describe "GET #index" do
    it "returns a success response" do
      Empresa.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      empresa = Empresa.create! valid_attributes
      get :show, params: {id: empresa.to_param}, session: valid_session
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
      empresa = Empresa.create! valid_attributes
      get :edit, params: {id: empresa.to_param}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Empresa" do
        expect {
          post :create, params: {empresa: valid_attributes}, session: valid_session
        }.to change(Empresa, :count).by(1)
      end

      it "redirects to the created empresa" do
        post :create, params: {empresa: valid_attributes}, session: valid_session
        expect(response).to redirect_to(Empresa.last)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'new' template)" do
        post :create, params: {empresa: invalid_attributes}, session: valid_session
        expect(response).to be_successful
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested empresa" do
        empresa = Empresa.create! valid_attributes
        put :update, params: {id: empresa.to_param, empresa: new_attributes}, session: valid_session
        empresa.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the empresa" do
        empresa = Empresa.create! valid_attributes
        put :update, params: {id: empresa.to_param, empresa: valid_attributes}, session: valid_session
        expect(response).to redirect_to(empresa)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'edit' template)" do
        empresa = Empresa.create! valid_attributes
        put :update, params: {id: empresa.to_param, empresa: invalid_attributes}, session: valid_session
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested empresa" do
      empresa = Empresa.create! valid_attributes
      expect {
        delete :destroy, params: {id: empresa.to_param}, session: valid_session
      }.to change(Empresa, :count).by(-1)
    end

    it "redirects to the empresas list" do
      empresa = Empresa.create! valid_attributes
      delete :destroy, params: {id: empresa.to_param}, session: valid_session
      expect(response).to redirect_to(empresas_url)
    end
  end

end
