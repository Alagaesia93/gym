# frozen_string_literal: true

require 'rails_helper'

RSpec.describe TraineeTrainersController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/trainee_trainers').to route_to('trainee_trainers#index')
    end

    it 'routes to #show' do
      expect(get: '/trainee_trainers/1').to route_to('trainee_trainers#show', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/trainee_trainers').to route_to('trainee_trainers#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/trainee_trainers/1').to route_to('trainee_trainers#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/trainee_trainers/1').to route_to('trainee_trainers#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/trainee_trainers/1').to route_to('trainee_trainers#destroy', id: '1')
    end
  end
end
