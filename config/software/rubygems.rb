#
# Copyright:: Copyright (c) 2012 Opscode, Inc.
# License:: Apache License, Version 2.0
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

name "rubygems"
version "2.0.3"

dependency "ruby"

source :url => "http://production.cf.rubygems.org/rubygems/rubygems-#{version}.tgz",
       :md5 => "854691f145cea98b4100e5b0831b73ed"

relative_path "rubygems-#{version}"

build do
  ruby "setup.rb --no-rdoc --no-ri", env: { 'LC_ALL' => 'en_US.UTF-8' }
end
