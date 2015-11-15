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

RSpec.describe AddImageToNewslettersController, :type => :controller do

  # This should return the minimal set of attributes required to create a valid
  # AddImageToNewsletter. As you add validations to AddImageToNewsletter, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # AddImageToNewslettersController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all add_image_to_newsletters as @add_image_to_newsletters" do
      add_image_to_newsletter = AddImageToNewsletter.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:add_image_to_newsletters)).to eq([add_image_to_newsletter])
    end
  end

  describe "GET show" do
    it "assigns the requested add_image_to_newsletter as @add_image_to_newsletter" do
      add_image_to_newsletter = AddImageToNewsletter.create! valid_attributes
      get :show, {:id => add_image_to_newsletter.to_param}, valid_session
      expect(assigns(:add_image_to_newsletter)).to eq(add_image_to_newsletter)
    end
  end

  describe "GET new" do
    it "assigns a new add_image_to_newsletter as @add_image_to_newsletter" do
      get :new, {}, valid_session
      expect(assigns(:add_image_to_newsletter)).to be_a_new(AddImageToNewsletter)
    end
  end

  describe "GET edit" do
    it "assigns the requested add_image_to_newsletter as @add_image_to_newsletter" do
      add_image_to_newsletter = AddImageToNewsletter.create! valid_attributes
      get :edit, {:id => add_image_to_newsletter.to_param}, valid_session
      expect(assigns(:add_image_to_newsletter)).to eq(add_image_to_newsletter)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new AddImageToNewsletter" do
        expect {
          post :create, {:add_image_to_newsletter => valid_attributes}, valid_session
        }.to change(AddImageToNewsletter, :count).by(1)
      end

      it "assigns a newly created add_image_to_newsletter as @add_image_to_newsletter" do
        post :create, {:add_image_to_newsletter => valid_attributes}, valid_session
        expect(assigns(:add_image_to_newsletter)).to be_a(AddImageToNewsletter)
        expect(assigns(:add_image_to_newsletter)).to be_persisted
      end

      it "redirects to the created add_image_to_newsletter" do
        post :create, {:add_image_to_newsletter => valid_attributes}, valid_session
        expect(response).to redirect_to(AddImageToNewsletter.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved add_image_to_newsletter as @add_image_to_newsletter" do
        post :create, {:add_image_to_newsletter => invalid_attributes}, valid_session
        expect(assigns(:add_image_to_newsletter)).to be_a_new(AddImageToNewsletter)
      end

      it "re-renders the 'new' template" do
        post :create, {:add_image_to_newsletter => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested add_image_to_newsletter" do
        add_image_to_newsletter = AddImageToNewsletter.create! valid_attributes
        put :update, {:id => add_image_to_newsletter.to_param, :add_image_to_newsletter => new_attributes}, valid_session
        add_image_to_newsletter.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested add_image_to_newsletter as @add_image_to_newsletter" do
        add_image_to_newsletter = AddImageToNewsletter.create! valid_attributes
        put :update, {:id => add_image_to_newsletter.to_param, :add_image_to_newsletter => valid_attributes}, valid_session
        expect(assigns(:add_image_to_newsletter)).to eq(add_image_to_newsletter)
      end

      it "redirects to the add_image_to_newsletter" do
        add_image_to_newsletter = AddImageToNewsletter.create! valid_attributes
        put :update, {:id => add_image_to_newsletter.to_param, :add_image_to_newsletter => valid_attributes}, valid_session
        expect(response).to redirect_to(add_image_to_newsletter)
      end
    end

    describe "with invalid params" do
      it "assigns the add_image_to_newsletter as @add_image_to_newsletter" do
        add_image_to_newsletter = AddImageToNewsletter.create! valid_attributes
        put :update, {:id => add_image_to_newsletter.to_param, :add_image_to_newsletter => invalid_attributes}, valid_session
        expect(assigns(:add_image_to_newsletter)).to eq(add_image_to_newsletter)
      end

      it "re-renders the 'edit' template" do
        add_image_to_newsletter = AddImageToNewsletter.create! valid_attributes
        put :update, {:id => add_image_to_newsletter.to_param, :add_image_to_newsletter => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested add_image_to_newsletter" do
      add_image_to_newsletter = AddImageToNewsletter.create! valid_attributes
      expect {
        delete :destroy, {:id => add_image_to_newsletter.to_param}, valid_session
      }.to change(AddImageToNewsletter, :count).by(-1)
    end

    it "redirects to the add_image_to_newsletters list" do
      add_image_to_newsletter = AddImageToNewsletter.create! valid_attributes
      delete :destroy, {:id => add_image_to_newsletter.to_param}, valid_session
      expect(response).to redirect_to(add_image_to_newsletters_url)
    end
  end

end
