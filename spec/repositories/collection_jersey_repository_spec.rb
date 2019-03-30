# frozen_string_literal: true

require 'rails_helper'

RSpec.describe CollectionJerseyRepository, type: :repository do
  context '#create' do
    it 'creates a jersey on DB' do
      # Given
      repository = CollectionJerseyRepository.new
      # When
      result = repository.create(
        text: 'Camisa de jogo que foi comprada do atleta Joaozinho',
        manufacturer: 'Athleta'
      )
      # Then
      expect(result.id).to be_present
      expect(result).to eq(CollectionJersey.last)
    end
  end
end
