def test_nginx_config_file(host):
    nginx = host.run("sudo nginx -t")
    assert nginx.succeeded
    