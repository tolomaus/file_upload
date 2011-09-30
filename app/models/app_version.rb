class AppVersion < ActiveRecord::Base
  validates_presence_of :version
  belongs_to :app
end
