default[:meetme_newrelic_plugin][:haproxy][:name] = node[:hostname]
default[:meetme_newrelic_plugin][:haproxy][:host] = "127.0.0.1"
default[:meetme_newrelic_plugin][:haproxy][:port] = "80"
default[:meetme_newrelic_plugin][:haproxy][:path] = "/nginx_stub_status"
default[:meetme_newrelic_plugin][:haproxy][:verify_ssl_cert] = "false"
default[:meetme_newrelic_plugin][:haproxy][:scheme] = "http"