module DigitalOcean
  module Resource
    class Image < Base
      def list(opts = {})
        @connection.get('/images', opts).body
      end

      def show(id)
        @connection.get("/images/#{id}").body
      end

      def delete(id)
        @connection.get("/images/#{id}/destroy").body
      end

      def transfer(id, opts = {})
        @connection.get("/images/#{id}/transfer", opts).body
      end
    end
  end
end
