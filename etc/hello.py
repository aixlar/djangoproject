CONFIG = {
    'mode': 'wsgi',
   # 'working_dir': '/home/etc/web',                                            
    'args': (
        '--bind=0.0.0.0:8080',
        '--workers=4',
        '--timeout=60',
        'hello:app'
    )
}
