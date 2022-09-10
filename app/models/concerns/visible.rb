module Visible
  extend ActiveSupport::Concern

  VALID_STATUSES = {'public', 'private', 'archived'}

  included do
    validates :status, inclusion: {n: VALID_STATUSES}
  end
  
  def archived?
    status == 'Archived'
  end
end