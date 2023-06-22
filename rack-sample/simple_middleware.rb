class SimpleMiddleware
  def initialize(app)
    puts "*" * 50
    puts "* #{self.class} initialized with #{app.class}"
    puts "*" * 50
    @app = app
  end

  def call(env)
    status, headers, body = @app.call(env)
    puts "*" * 50
    puts "* #{self.class} called (body = #{body})"
    puts "*" * 50
    [status, headers, body]
  end
end