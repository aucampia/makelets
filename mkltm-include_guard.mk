# Copyright (c) 2014 Iwan Aucamp

mkltm-version:=1.0-SNAPSHOT
mkltm-vp:=mkltm-$(mkltm-version)

mkltm-include_guard-current_file=$(abspath $(lastword $(MAKEFILE_LIST)))
mkltm-include_guard-current_file=$(info mkltm-current_file=$(mkltm-current_file))

define mkltm-include_guard-start
mkltm-current_file:=$(abspath $(lastword $(MAKEFILE_LIST)))
ifndef $(mkltm-include_guard-current_file)
endef

define mkltm-include_guard-end
endif
endef
