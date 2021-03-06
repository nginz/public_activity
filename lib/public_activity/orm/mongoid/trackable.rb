module PublicActivity
  module ORM
    module Mongoid
      module Trackable
        def self.included(base)
          base.has_many :activities, :class_name => "::PublicActivity::Activity", :as => :trackable
        end
      end
    end
  end
end
