class Application
  def call(env)
    handle_request(env['REQUEST_METHOD'], env['PATH_INFO'])
    # puts inspect_env(env)
  #   status = 200
  #   headers = { "content-Type" => "text/html" }
  #   body = ["Yay, your first web application! <3"]
  #
  #   [status, headers, body]
  end

# def handle_request(method, path)
#   if method == "GET"
#     get(path)
#   else
#     method_not_allowed(method)
#   end
# end
#
# def get(path)
#   [200, {"Content-Type" => "text/html"}, ["You have requested the path #{path}, using GET"]]
# end
#
# def method_not_allowed(method)
#   [405, {}, ["Method not allowed: #{method}"]]
# end

# def inspect_env(env)
#   puts format('Request headers', request_headers(env))
#   puts format('Server info', server_info(env))
#   puts format('Rack info', rack_info(env))
# end
#
# def request_headers(env)
#   env.select { |key, value| key.include?('HTTP_') }
# end
#
# def server_info(env)
#   env.reject { |key, value| key.include?('HTTP_') or key.include?('rack.') }
# end
#
# def rack_info(env)
#   env.select { |key, value| key.include?('rack.') }
# end
#
# def format(heading, pairs)
#   [heading, "", format_pairs(pairs)]
# end
#
# def format_pairs(pairs)
#   pairs.map { |key, value| '  ' + [key, value.inspect].join(': ') }
# end
end
run Application.new
