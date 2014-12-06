FactoryGirl.define do
  factory :bestiary do
    sequence(:name) { |n| "Bestiary #{n}" }
  end

  # factory :event_type_attribute_relation do
  #   event_type
  #   event_type_attribute
  # end

  # factory :event_type do
  #   sequence(:title) { |n| "Event type #{n}" }
  #   transient do
  #     attributes_count 0
  #   end
  #   after(:create) do |event_type, evaluator|
  #     create_list :event_type_attribute_relation, evaluator.attributes_count,
  #                 event_type: event_type
  #   end
  # end
end
