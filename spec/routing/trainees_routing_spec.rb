# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Api::V1::TraineesController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: 'api/v1/trainees').to route_to('api/v1/trainees#index')
    end

    it 'routes to #show' do
      expect(get: 'api/v1/trainees/1').to route_to('api/v1/trainees#show', id: '1')
    end

    it 'routes to #create' do
      expect(post: 'api/v1/trainees').to route_to('api/v1/trainees#create')
    end

    it 'routes to #update via PUT' do
      expect(put: 'api/v1/trainees/1').to route_to('api/v1/trainees#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: 'api/v1/trainees/1').to route_to('api/v1/trainees#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: 'api/v1/trainees/1').to route_to('api/v1/trainees#destroy', id: '1')
    end
  end
end
