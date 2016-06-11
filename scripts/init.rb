#!/usr/bin/ruby
##########################################################################
# Copyright 2016 ThoughtWorks, Inc.
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
##########################################################################


NO_OF_PIPELINES = ENV["NO_OF_PIPELINES"] || 10
NO_OF_AGENTS = ENV["NO_OF_AGENTS"]  || 5
PERF_SERVER_URL = ENV["PERF_SERVER_URL"] || "http://localhost:8153"
PERF_SERVER_SSH_URL = ENV["PERF_SERVER_SSH_URL"] || "https://localhost:8154"
RELEASES_JSON_URL = 'https://download.go.cd/experimental/releases.json'
CONFIG_UPDATE_INTERVAL = ENV['CONFIG_UPDATE_INTERVAL'] || 5
SCM_COMMIT_INTERVAL = ENV['SCM_UPDATE_INTERVAL'] || 5
JMETER_DIR=ENV['JMETER_DIR'] || "/var/go"
SERVER_DIR=ENV['SERVER_DIR'] || "/tmp"
ENV['JMETER_PATH'] = "#{JMETER_DIR}/apache-jmeter-3.0/bin/"
GIT_ROOT = ENV["GIT_ROOT"] || "/tmp"
GIT_REPOSITORY_SERVER = ENV['GIT_REPOSITORY_SERVER'] || "localhost"
GIT_REPOS = (1..NO_OF_PIPELINES).inject([]) do |repos, i|
  repos << "git-repo-#{i}"
end
NO_OF_COMMITS = ENV['NO_OF_COMMITS'] || 1
