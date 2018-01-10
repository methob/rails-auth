class Category < ApplicationRecord
  def as_json(options = {})
    options = options.merge(
      except: %i[
        updated_at
        created_at
      ]
    )
    super.as_json(options)
  end
end
