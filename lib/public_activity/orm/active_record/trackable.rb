module PublicActivity
  module ORM
    module ActiveRecord
      module Trackable
        def self.included(base)
          base.has_many :activities, :class_name => "::PublicActivity::Activity", :as => :trackable do
            def read
              where is_read: true
            end

            def unread
              where is_read: false
            end
          end
        end
      end
    end
  end
end
