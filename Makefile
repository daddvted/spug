#
# Licensed to the Apache Software Foundation (ASF) under one or more
# contributor license agreements.  See the NOTICE file distributed with
# this work for additional information regarding copyright ownership.
# The ASF licenses this file to You under the Apache License, Version 2.0
# (the "License"); you may not use this file except in compliance with
# the License.  You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

SHELL := /bin/bash -o pipefail
UNAME ?= $(shell uname)
YARN_EXEC ?= $(shell which yarn)
GO_EXEC ?= $(shell which go)
DT ?= $(shell date +"%Y%m%d-%H%M")


VER ?= $(shell git describe --tags --dirty --always)
# VER ?= $(shell git describe --tags --dirty)
ifeq ($(VER),)
	VER = $(shell date +"%Y%m%d-%H%M")
endif
TAG = "$(VER)"

quick: 
	@echo ${TAG}
#	cd ./spug_web && export NODE_OPTIONS=--openssl-legacy-provider  && SPUG_VERSION=${TAG} npm run build
#	docker build --no-cache -t 192.168.6.99/devops/spug:${TAG} .
