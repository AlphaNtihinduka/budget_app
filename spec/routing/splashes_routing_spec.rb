require 'rails_helper'

RSpec.describe SplashesController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/splashes').to route_to('splashes#index')
    end

    it 'routes to #new' do
      expect(get: '/splashes/new').to route_to('splashes#new')
    end

    it 'routes to #show' do
      expect(get: '/splashes/1').to route_to('splashes#show', id: '1')
    end

    it 'routes to #edit' do
      expect(get: '/splashes/1/edit').to route_to('splashes#edit', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/splashes').to route_to('splashes#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/splashes/1').to route_to('splashes#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/splashes/1').to route_to('splashes#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/splashes/1').to route_to('splashes#destroy', id: '1')
    end
  end
end
