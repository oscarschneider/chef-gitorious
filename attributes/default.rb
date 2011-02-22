# TODO: currently using bundler branch from cjohansen until his work is pushed
# to master mainline (approx Mar 04/11).
default[:gitorious][:git][:url] =
  "git://gitorious.org/~cjohansen/gitorious/cjohansens-mainline.git"
default[:gitorious][:git][:reference] =
  "68bdc6eae378fe51335ae6897bc1da25ba5afac8"

default[:gitorious][:web_server] = "nginx"

default[:gitorious][:app_user]      = "git"
default[:gitorious][:app_base_dir]  = "/srv/gitorious"
default[:gitorious][:git_base_dir]  = "/var/git"
default[:gitorious][:rails_env]     = "production"

default[:gitorious][:rvm_gemset] = "gitorious"

default[:gitorious][:db][:host]     = "localhost"
default[:gitorious][:db][:database] = "gitorious"
default[:gitorious][:db][:user]     = "gitor"
default[:gitorious][:db][:password] = "gitorious"

default[:gitorious][:host]                = "gitorious.local"
default[:gitorious][:support_email]       = "support@gitorious.org"
default[:gitorious][:notification_emails] = ""
default[:gitorious][:public_mode]         = "true"
default[:gitorious][:only_admins_create]  = "false"

default[:gitorious][:optional_tls][:url] =
  "git://github.com/collectiveidea/action_mailer_optional_tls.git"

default[:gitorious][:mailer][:delivery_method]  = "smtp"

default[:gitorious][:smtp][:tls]            = "false"
default[:gitorious][:smtp][:address]        = "smtp.example.com"
default[:gitorious][:smtp][:port]           = ""
default[:gitorious][:smtp][:domain]         = ""
default[:gitorious][:smtp][:authentication] = "plain"
default[:gitorious][:smtp][:username]       = ""
default[:gitorious][:smtp][:password]       = ""

node[:webapp][:apps] << {
  :id               => "gitorious",
  :profile          => "rails",
  :host_name        => node[:gitorious][:host],
  :non_ssl_server   => "enable",
  :ssl_server       => "enable",
  :user             => "git"
}

node[:webapp][:users][:git] = { :deploy_keys => [] }
