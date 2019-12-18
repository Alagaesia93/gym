# frozen_string_literal: true

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
#
# Also compared to earlier versions of this generator, there are no longer any
# expectations of assigns and templates rendered. These features have been
# removed from Rails core in Rails 5, but can be added back in via the
# `rails-controller-testing` gem.

RSpec.describe Api::V1::TrainersController, type: :controller do
  # This should return the minimal set of attributes required to create a valid
  # Trainer. As you add validations to Trainer, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) do
    # skip('Add a hash of attributes valid for your model')
    { first_name: 'First_name', last_name: 'Last_name', areas_of_expertise: %w[yoga climbing] }
  end

  let(:invalid_attributes) do
    skip("We don't have any invalid attributes yet")
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # TrainersController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe 'GET #index' do
    it 'returns a success response' do
      trainer = Trainer.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(response).to be_successful
      expect(assigns(:trainers).include?(trainer)).to be true
    end

    it 'returns trainers with the single selected areas of expertise' do
      first_trainer = FactoryBot.create(:trainer, areas_of_expertise: %w[yoga climbing])
      second_trainer = FactoryBot.create(:trainer, areas_of_expertise: %w[football volleyball])
      get :index, params: { areas_of_expertise: ['yoga'] }, session: valid_session
      expect(response).to be_successful
      expect(assigns(:trainers).include?(first_trainer)).to be true
      expect(assigns(:trainers).include?(second_trainer)).to be false
    end

    it 'returns trainers with the multiple selected areas of expertise' do
      first_trainer = FactoryBot.create(:trainer, areas_of_expertise: %w[yoga climbing])
      second_trainer = FactoryBot.create(:trainer, areas_of_expertise: %w[football volleyball])
      third_trainer = FactoryBot.create(:trainer, areas_of_expertise: %w[yoga kung-fu])
      get :index, params: { areas_of_expertise: %w[yoga climbing] }, session: valid_session
      expect(response).to be_successful
      expect(assigns(:trainers).include?(first_trainer)).to be true
      expect(assigns(:trainers).include?(second_trainer)).to be false
      expect(assigns(:trainers).include?(third_trainer)).to be false
    end
  end

  describe 'GET #show' do
    it 'returns a success response' do
      trainer = Trainer.create! valid_attributes
      get :show, params: { id: trainer.to_param }, session: valid_session
      expect(response).to be_successful
    end
  end

  describe 'POST #create' do
    context 'with valid params' do
      it 'creates a new Trainer' do
        expect do
          post :create, params: { trainer: valid_attributes }, session: valid_session
        end.to change(Trainer, :count).by(1)
      end

      it 'renders a JSON response with the new trainer' do
        post :create, params: { trainer: valid_attributes }, session: valid_session
        expect(response).to have_http_status(:created)
        expect(response.content_type).to eq('application/json')
        expect(response.location).to eq(api_v1_trainer_url(Trainer.last))
      end
    end

    context 'with invalid params' do
      it 'renders a JSON response with errors for the new trainer' do
        post :create, params: { trainer: invalid_attributes }, session: valid_session
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.content_type).to eq('application/json')
      end
    end
  end

  describe 'PUT #update' do
    context 'with valid params' do
      let(:new_attributes) do
        { first_name: 'Foo', last_name: 'Bar', areas_of_expertise: ['football'] }
      end

      it 'updates the requested trainer' do
        trainer = Trainer.create! valid_attributes
        put :update, params: { id: trainer.to_param, trainer: new_attributes }, session: valid_session
        trainer.reload
        expect(trainer.first_name).to eq 'Foo'
      end

      it 'renders a JSON response with the trainer' do
        trainer = Trainer.create! valid_attributes

        put :update, params: { id: trainer.to_param, trainer: valid_attributes }, session: valid_session
        expect(response).to have_http_status(:ok)
        expect(response.content_type).to eq('application/json')
      end
    end

    context 'with invalid params' do
      it 'renders a JSON response with errors for the trainer' do
        trainer = Trainer.create! valid_attributes

        put :update, params: { id: trainer.to_param, trainer: invalid_attributes }, session: valid_session
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.content_type).to eq('application/json')
      end
    end
  end

  describe 'DELETE #destroy' do
    it 'destroys the requested trainer' do
      trainer = Trainer.create! valid_attributes
      expect do
        delete :destroy, params: { id: trainer.to_param }, session: valid_session
      end.to change(Trainer, :count).by(-1)
    end
  end
end
