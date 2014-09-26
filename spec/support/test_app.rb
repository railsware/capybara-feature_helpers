class TestApp
  class << self
    attr_accessor :body

    def call(env)
      [200, {}, build_body]
    end

    private

    def build_body
      [
        "<html><body>#{body}</body></html>"
      ]
    end
  end
end
