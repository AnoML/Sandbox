#!/bin/bash
# Copyright 2017 WSO2 Inc. (http://wso2.org)
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
# ----------------------------------------------------------------------------
# Generate JSON Payloads
# ----------------------------------------------------------------------------

script_dir=$(dirname "$0")
payloads=$1

if [[ -z $payloads ]]; then
    payloads="50 1024 10240 102400"
fi

for s in $payloads
do
    echo "Generating ${s}B file"
    java -jar $script_dir/payload-generator-0.1.1-SNAPSHOT.jar --size $s
done
