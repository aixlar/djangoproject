def app(env, start_response):
    status  = '200 OK'
    headers = [('Content-Type', 'text/plain')]
    body    = env['QUERY_STRING']
    body    = '\n'.join(body.split('&')).encode('utf-8')
    start_response(status, headers)
    return iter([body])