class App
  def call(env)
    pp env

    status = 200
    headers = { 'content-type' => 'text/plain' }
    body = ["Hello World!"]
    [status, headers, body]
  end
end
