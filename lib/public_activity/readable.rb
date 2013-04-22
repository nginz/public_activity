module PublicActivity
  module Readable
    def self.included(base)
      base.extend(ClassMethods)
    end

    def is_read?
      is_read
    end

    def is_unread?
      !is_read
    end
    
    def mark_read!
      unless self.is_read?
        self.is_read = true
        self.save
      end
    end

    def mark_unread!
      unless self.is_unread?
        self.is_read = false
        self.save
      end
    end

    module ClassMethods
      def mark_read!
        each do |activity|
          activity.mark_read!
        end
      end

      def mark_unread!
        each do |activity|
          activity.mark_unread!
        end
      end
    end
  end
end