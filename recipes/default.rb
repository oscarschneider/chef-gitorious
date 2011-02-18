#
# Cookbook Name:: gitorious
# Recipe:: default
#
# Copyright 2011, Fletcher Nichol
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
#     http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

include_recipe "mysql::server"

include_recipe "rvm_passenger::#{node[:gitorious][:web_server]}"

include_recipe "imagemagick"
package "libmagickwand-dev"

include_recipe "stompserver"

package "geoip-bin"
package "libgeoip-dev"
