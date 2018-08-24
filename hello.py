# def app(env, start_response):
#     status  = '200 OK'
#     headers = [('Content-Type', 'text/plain')]
#     body    = env['QUERY_STRING']
#     body    = '\n'.join(body.split('&')).encode('utf-8')
#     start_response(status, headers)
#     return iter([body])

def app(environ, start_response):
    data = b'Hello, World!\n'
    status = '200 OK'
    response_headers = [
        ('Content-type', 'text/plain'),
        ('Content-Length', str(len(data)))
    ]
    start_response(status, response_headers)
    return iter([data])