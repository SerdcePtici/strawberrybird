require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe ProsesController, :type => :controller do

  # This should return the minimal set of attributes required to create a valid
  # Prose. As you add validations to Prose, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    attributes_for(:prose)
  }

  let(:invalid_attributes) {
    {title: '', text: ''}
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ProsesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all proses as @proses" do
      prose = Prose.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:proses)).to eq([prose])
    end
  end

  describe "GET show" do
    it "assigns the requested prose as @prose" do
      prose = Prose.create! valid_attributes
      get :show, {:id => prose.to_param}, valid_session
      expect(assigns(:prose)).to eq(prose)
    end
  end

  describe "GET new" do
    before { sign_in create(:admin) }
    it "assigns a new prose as @prose" do
      get :new, {}, valid_session
      expect(assigns(:prose)).to be_a_new(Prose)
    end
  end

  describe "GET edit" do
    before { sign_in create(:admin) }
    it "assigns the requested prose as @prose" do
      prose = Prose.create! valid_attributes
      get :edit, {:id => prose.to_param}, valid_session
      expect(assigns(:prose)).to eq(prose)
    end
  end

  describe "POST create" do
    before { sign_in create(:admin) }
    describe "with valid params" do
      it "creates a new Prose" do
        expect {
          post :create, {:prose => valid_attributes}, valid_session
        }.to change(Prose, :count).by(1)
      end

      it "assigns a newly created prose as @prose" do
        post :create, {:prose => valid_attributes}, valid_session
        expect(assigns(:prose)).to be_a(Prose)
        expect(assigns(:prose)).to be_persisted
      end

      it "redirects to the created prose" do
        post :create, {:prose => valid_attributes}, valid_session
        expect(response).to redirect_to(Prose.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved prose as @prose" do
        post :create, {:prose => invalid_attributes}, valid_session
        expect(assigns(:prose)).to be_a_new(Prose)
      end

      it "re-renders the 'new' template" do
        post :create, {:prose => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    before { sign_in create(:admin) }
    describe "with valid params" do
      let(:new_attributes) {
        attributes_for(:prose, title: 'new')
      }

      it "updates the requested prose" do
        prose = Prose.create! valid_attributes
        put :update, {:id => prose.to_param, :prose => new_attributes}, valid_session
        prose.reload
        expect(prose.title).to eq 'new'
      end

      it "assigns the requested prose as @prose" do
        prose = Prose.create! valid_attributes
        put :update, {:id => prose.to_param, :prose => valid_attributes}, valid_session
        expect(assigns(:prose)).to eq(prose)
      end

      it "redirects to the prose" do
        prose = Prose.create! valid_attributes
        put :update, {:id => prose.to_param, :prose => valid_attributes}, valid_session
        expect(response).to redirect_to(prose)
      end
    end

    describe "with invalid params" do
      it "assigns the prose as @prose" do
        prose = Prose.create! valid_attributes
        put :update, {:id => prose.to_param, :prose => invalid_attributes}, valid_session
        expect(assigns(:prose)).to eq(prose)
      end

      it "re-renders the 'edit' template" do
        prose = Prose.create! valid_attributes
        put :update, {:id => prose.to_param, :prose => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    before { sign_in create(:admin) }
    it "destroys the requested prose" do
      prose = Prose.create! valid_attributes
      expect {
        delete :destroy, {:id => prose.to_param}, valid_session
      }.to change(Prose, :count).by(-1)
    end

    it "redirects to the proses list" do
      prose = Prose.create! valid_attributes
      delete :destroy, {:id => prose.to_param}, valid_session
      expect(response).to redirect_to(proses_url)
    end
  end

end
