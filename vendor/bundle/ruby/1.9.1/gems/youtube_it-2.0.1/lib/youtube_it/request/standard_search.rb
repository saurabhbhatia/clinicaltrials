class YouTubeIt
  module Request #:nodoc:
    class StandardSearch < BaseSearch #:nodoc:
      attr_reader :max_results                     # max_results
      attr_reader :order_by                        # orderby, ([relevance], viewCount, published, rating)
      attr_reader :offset                          # start-index
      attr_reader :time                            # time

      TYPES = [ :top_rated, :top_favorites, :most_viewed, :most_popular,
                :most_recent, :most_discussed, :most_linked, :most_responded,
                :recently_featured, :watch_on_mobile ]

      def initialize(type, options={})
        @dev_key = options[:dev_key] if options[:dev_key]
        if TYPES.include?(type)
          @max_results, @order_by, @offset, @time = nil
          set_instance_variables(options)
          @url = base_url + type.to_s << build_query_params(to_youtube_params)
        else
          raise "Invalid type, must be one of: #{ TYPES.map { |t| t.to_s }.join(", ") }"
        end
      end

      private

      def base_url
        super << "standardfeeds/"
      end

      def to_youtube_params
        {
          'max-results' => @max_results,
          'orderby' => @order_by,
          'start-index' => @offset,
          'time' => @time,
          'v' => 2
        }
      end
    end

  end
end

