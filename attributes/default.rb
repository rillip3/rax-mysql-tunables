default[:rax_mysql_tunables][:innodb_buffer_pool_mempercent] = 0.6
default[:rax_mysql_tunables][:config_options][:mysqld]['innodb-buffer-pool-size'] = "#{(node['memory']['total'].to_i * node[:rax_mysql_tunables][:innodb_buffer_pool_mempercent].to_f ).floor * 1024}"
