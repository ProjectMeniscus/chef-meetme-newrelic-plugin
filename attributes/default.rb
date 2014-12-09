default[:meetme_newrelic_plugin][:package_name] = "newrelic-plugin-agent"
default[:meetme_newrelic_plugin][:poll_interval] = 60
default[:meetme_newrelic_plugin][:config_file] = "/etc/newrelic/newrelic_plugin_agent.cfg"
default[:meetme_newrelic_plugin][:log_dir] = "/var/log/newrelic"
default[:meetme_newrelic_plugin][:log_file] = "newrelic_plugin_agent.log"
default[:meetme_newrelic_plugin][:run_dir] = "/var/run/newrelic"
default[:meetme_newrelic_plugin][:user] = "newrelic"
default[:meetme_newrelic_plugin][:group] = "root"

case node['platform_family']
when "rhel"	
  default[:meetme_newrelic_plugin][:binary_path] = "/usr/bin"
else
  default[:meetme_newrelic_plugin][:binary_path] = "/usr/local/bin"
end	
default[:meetme_newrelic_plugin][:elasticsearch][:enable] = false
default[:meetme_newrelic_plugin][:memcached][:enable] = false
default[:meetme_newrelic_plugin][:mongodb][:enable] = false
default[:meetme_newrelic_plugin][:nginx][:enable] = false
default[:meetme_newrelic_plugin][:php_fpm][:enable] = false
default[:meetme_newrelic_plugin][:postgresql][:enable] = false
default[:meetme_newrelic_plugin][:rabbitmq][:enable] = false
default[:meetme_newrelic_plugin][:uwsgi][:enable] = false
