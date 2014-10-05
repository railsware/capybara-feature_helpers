class TestApp
  class << self
    attr_accessor :style
    attr_accessor :body

    def call(env)
      [200, {}, build_body]
    end

    private

    def build_body
      [
        "<html><style>#{style}</style><body>#{body}</body></html>"
      ]
    end
  end
end
