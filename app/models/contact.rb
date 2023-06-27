class Contact < ApplicationRecord
  def author
    "Müller"
  end
  def as_json(options={})
    super(methods: :author, root: true)      
  end
end
