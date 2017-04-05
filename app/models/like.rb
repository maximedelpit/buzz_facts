class Like < ApplicationRecord
  belongs_to :buzz_fact

  # attr_accessors => :buzz_fact_id, :buzz_fact,
end
