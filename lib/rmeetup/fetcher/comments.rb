module RMeetup
  module Fetcher
    class Comments < Base
      def initialize
        @type = :comments
      end

      # Turn the result hash into a Comment Class
      def format_result(result)
        RMeetup::Type::Comment.new(result)
      end

      protected

        def base_url
          "http://api.meetup.com/#{@type}.json/"
        end
    end
  end
end
