#
# Cookbook:: example-run-state
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
ruby_block "get svc name" do
  block do
    node.run_state['svcname'] = "some new value"
    puts "\nService name found --->> " + node.run_state['svcname']
  end
end
