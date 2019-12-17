# frozen_string_literal: true

require 'rails_helper'

RSpec.describe TraineesController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/trainees').to route_to('trainees#index')
    end

    it 'routes to #show' do
      expect(get: '/trainees/1').to route_to('trainees#show', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/trainees').to route_to('trainees#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/trainees/1').to route_to('trainees#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/trainees/1').to route_to('trainees#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/trainees/1').to route_to('trainees#destroy', id: '1')
    end
  end
end
