class Translation < ActiveRecord::Base
  validates_presence_of :text
  validates_uniqueness_of :phrase_id, :scope => :locale_id

  belongs_to :phrase
  belongs_to :locale
end
