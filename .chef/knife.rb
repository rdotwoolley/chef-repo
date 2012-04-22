user = ENV['OPSCODE_USER'] || ENV['USER']

current_dir = File.dirname(File.expand_path(__FILE__))
log_level                :info
log_location             STDOUT
node_name                user
client_key               "#{ENV['HOME']}/.chef/#{user}.pem"
validation_client_name   ""
validation_key           "#{current_dir}/"
chef_server_url          ""
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]
cookbook_copyright       "Randonymity Inc."
cookbook_email           "robert.woolley@rdotwoolley.com"
cookbook_license         "apachev2"

# aws configuration
knife[:aws_access_key_id] = ""
knife[:aws_secret_access_key] = ""
knife[:aws_ssh_key_id] = "chef_east_aws"
#knife[:identity_file] = "#{current_dir}/chef_east_aws.pem"
knife[:region] = "us-east-1"
knife[:availability_zone] = "us-east-1b"

knife[:image] = "ami-41d00528"
knife[:flavor] = "m1.small"

knife[:distro] = "centos5-gems"
