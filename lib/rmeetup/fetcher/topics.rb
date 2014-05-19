module RMeetup
  module Fetcher
    class Topics < Base
      def initialize
        @type = :topics
      end

      # Turn the result hash into a Topic Class
      def format_result(result)
        RMeetup::Type::Topic.new(result)
      end

      protected

        def base_url
          "http://api.meetup.com/#{@type}.json/"
        end
    end
  end
end
