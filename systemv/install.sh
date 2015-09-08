#!/bin/bash
## Script to start webrtc based on instances
## Copyright 2014, Jorge Fonseca - http://jorge.fonseca.ec

## Licensed under the Apache License, Version 2.0 (the "License");
## you may not use this file except in compliance with the License.
## You may obtain a copy of the License at

##    http://www.apache.org/licenses/LICENSE-2.0

## Unless required by applicable law or agreed to in writing, software
## distributed under the License is distributed on an "AS IS" BASIS,
## WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
## See the License for the specific language governing permissions and
## limitations under the License.

echo "Installing sistem service"
cp -v --backup=numbered etc-default/webrtc2sip-instance01 /etc/default/
cp -v --backup=numbered etc-init.d/webrtc2sip /etc/init.d/
cp -rv --backup=numbered usr-local/etc/ /usr/local/
cp -v --backup=numbered usr-local/sbin/webrtc2sip-script /usr/local/sbin/
update-rc.d webrtc2sip defaults
echo "End of script"