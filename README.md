meetme-newrelic-plugin Cookbook
===============================
Installs the MeetMe plugin for NewRelic


Requirements
------------
python
python-pip
newrelic


Attributes
----------
#### meetme-newrelic-plugin::default
* `node[:meetme_newrelic_plugin][:package_name]` - The name of the pip package that installs the meetme newrelic plugin  
* `node[:meetme_newrelic_plugin][:poll_interval]` - interval, in seconds, that stats are polled  
* `node[:meetme_newrelic_plugin][:config_file]` -  location of config file
* `node[:meetme_newrelic_plugin][:log_dir]` - logging directory
* `node[:meetme_newrelic_plugin][:log_file]` - name of log file
* `node[:meetme_newrelic_plugin][:run_dir]` -  the run directory for the pid file
* `node[:meetme_newrelic_plugin][:user]` -  the user that runs the application 
* `node[:meetme_newrelic_plugin][:group]` -  group for application file permissions 

#### meetme-newrelic-plugin::memcached
* `node[:meetme_newrelic_plugin][:memcached][:name]` - hostname memcached instance is running on
* `node[:meetme_newrelic_plugin][:memcached][:host]` - host memcached instance is running on
* `node[:meetme_newrelic_plugin][:memcached][:port]` - port memcached is listening on
* `node[:meetme_newrelic_plugin][:memcached][:path]` - path of unix socket (if memcached is using one)

#### meetme-newrelic-plugin::mongodb

* `node[:meetme_newrelic_plugin][:mongodb][:host]` - host mongodb instance is running on
* `node[:meetme_newrelic_plugin][:mongodb][:port]` - port mongdb is listening on

If you only have one host and one DB to monitor:

* `node[:meetme_newrelic_plugin][:mongodb][:database]` - name of database to monitor
* `node[:meetme_newrelic_plugin][:mongodb][:admin_username]` - key for admin username
* `node[:meetme_newrelic_plugin][:mongodb][:admin_password]` - key for admin password
* `node[:meetme_newrelic_plugin][:mongodb][:db_username]` - key for db username
* `node[:meetme_newrelic_plugin][:mongodb][:db_password]` - key for db password

If you need to monitor multiples servers/databases:

* `node[:meetme_newrelic_plugin][:mongodb][:admin_username]` - admin username
* `node[:meetme_newrelic_plugin][:mongodb][:admin_password]` - admin password
* `node[:meetme_newrelic_plugin][:mongodb][:servers]` - List of servers to monitor. Follow this format:

```json
"servers": [
        {
          "name": "production mongo server",
          "host": "mongodb-prod",
          "with_auth": false,
          "databases": [
            {
              "name": "myapp",
              "name": "myotherapp"
            }
          ]
        },
        {
          "name": "staging mongo server",
          "host": "mongodb-staging",
          "with_auth": false,
          "databases": [
            {
              "name": "myapp"
            }
          ]
        },
        {...}
]
```

#### meetme-newrelic-plugin::nginx
* `node[:meetme_newrelic_plugin][:nginx][:name]` - hostname nginx is running on
* `node[:meetme_newrelic_plugin][:nginx][:host]` - host nginx is listening on
* `node[:meetme_newrelic_plugin][:nginx][:port]` - port nginx is listening on
* `node[:meetme_newrelic_plugin][:nginx][:path]` - path of nginx stub status page
* `node[:meetme_newrelic_plugin][:nginx][:verify_ssl_cert]` - verify ssl certificate flag

#### meetme-newrelic-plugin::php_fpm
* `node[:meetme_newrelic_plugin][:php_fpm][:name]` - hostname php-fpm is running on
* `node[:meetme_newrelic_plugin][:php_fpm][:scheme]` - fpm scheme (ex: http or https)
* `node[:meetme_newrelic_plugin][:php_fpm][:host]` - host where fpm status page is listening
* `node[:meetme_newrelic_plugin][:php_fpm][:port]` - port where fpm status page is listening
* `node[:meetme_newrelic_plugin][:php_fpm][:path]` - path of fpm status page 
* `node[:meetme_newrelic_plugin][:php_fpm][:query]` - query type (ex: json)


Usage
-----
Just include `meetme-newrelic-plugin` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[meetme-newrelic-plugin]"
  ]
}
```

Contributing
------------
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write you change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: Steven Gonzales
