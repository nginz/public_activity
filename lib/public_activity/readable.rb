module PublicActivity
  module Readable
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
  end
end