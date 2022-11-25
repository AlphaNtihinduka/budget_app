require 'rails_helper'

RSpec.describe PaymentsController, type: :routing do
  describe 'routing' do
    it 'routes to #new' do
      expect(get: '/categories/1/payments/new').to route_to('payments#new', category_id: '1')
    end

    it 'routes to #edit' do
      expect(get: '/categories/1/payments/1/edit').to route_to('payments#edit', category_id: '1', id: '1')
    end

    it 'routes to #create' do
      expect(post: 'categories/1/payments').to route_to('payments#create', category_id: '1')
    end

    it 'routes to #update via PUT' do
      expect(put: 'categories/1/payments/1').to route_to('payments#update', category_id: '1', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: 'categories/1/payments/1').to route_to('payments#update', category_id: '1', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: 'categories/1/payments/1').to route_to('payments#destroy', category_id: '1', id: '1')
    end
  end
end
