# frozen_string_literal: true

FactoryBot.define do
  factory :trainee_trainer do
    trainee { Trainee.last || FactoryBot.create(:trainee) }
    trainer { Trainer.last || FactoryBot.create(:trainer) }
  end
end
