module DigitalOcean
  module Resource
    class Event < Base
      def show(id)
        @connection.get("/events/#{id}").body
      end
    end
  end
end
