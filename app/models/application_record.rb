class ApplicationRecord < ActiveRecord::Base
  # protect_from_forgery with: :exception  CSRF対策
  self.abstract_class = true
end
