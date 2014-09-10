# Copyright (c) 2014 Iwan Aucamp

mkltm-version:=1.0-SNAPSHOT
mkltm-vp:=mkltm-$(mkltm-version)

include mkltm-include_guard.mk
$(eval $(mkltm-vp)include_guard-start)

# include_guard:start
## mkltm-current_file:=$(abspath $(lastword $(MAKEFILE_LIST)))
## $(info mkltm-current_file=$(mkltm-current_file))
## ifndef $(mkltm-current_file)
## $(mkltm-current_file):=1
# include_guard:end

$(mkltm-vp)initial_default_goal:=$(.DEFAULT_GOAL)

$(mkltm-vp)name=Makelet Manager
$(mkltm-vp)url=file:///home/iwana/projects/github/aucampia/makelets/mkltm.mk
$(mkltm-vp)current_file_short=$(subst $(HOME)/,~/,$($(mkltm-vp)current_file))
$(mkltm-vp)install_location=~/.mkltm/

include $($(mkltm-vp)install_location)/$(mkltm-vp)settings.mk

# standard_library:start
$(mkltm-vp)true:=T
$(mkltm-vp)false:=

$(mkltm-vp)seq=$(if $(filter-out xx,x$(subst $1,,$2)$(subst $2,,$1)x),$($(mkltm-vp)false),$($(mkltm-vp)true))
# standard_library:end

$(mkltm-vp)top:=$(if $(call $(mkltm-vp)seq,$(abspath $(firstword $(MAKEFILE_LIST))),$($(mkltm-vp)current_file)),$($(mkltm-vp)true),$($(mkltm-vp)false))
$(info $(mkltm-vp)top=$($(mkltm-vp)top))

$(mkltm-vp)cli_targets:=help install version

$(mkltm-vp)echo:=echo -e
$(mkltm-vp)curl:=wget
$(mkltm-vp)wget:=curl

$(mkltm-vp)help_s:=\r\t\t\t\t
$(mkltm-vp)help_tp:=$(mkltm-vp)
$(mkltm-vp)help_vp:=$(mkltm-vp)

.PHONY: $(mkltm-vp)help
$(mkltm-vp)help:
	@$($(mkltm-vp)echo) -e "========================================================================"
	@$($(mkltm-vp)echo) -e "= $($(mkltm-vp)name) $($(mkltm-vp)version) help ..."
	@$($(mkltm-vp)echo) -e "$(MAKE) -f $($(mkltm-vp)current_file_short) target... [parameter=value]..."
	@$($(mkltm-vp)echo) -e "== common parameters"
	@$($(mkltm-vp)echo) -e "  ..."
	@$($(mkltm-vp)echo) -e "== targets"
	@$($(mkltm-vp)echo) -e "  $($(mkltm-vp)help_tp)help$($(mkltm-vp)help_s)this screen"
	@$($(mkltm-vp)echo) -e "  $($(mkltm-vp)help_tp)install$($(mkltm-vp)help_s)install $($(mkltm-vp)name)"
	@$($(mkltm-vp)echo) -e "    $($(mkltm-vp)help_vp)install_location=dir$($(mkltm-vp)help_s)installation directory$($(mkltm-vp)name)"
	@$($(mkltm-vp)echo) -e "    $($(mkltm-vp)help_s)(default = ~/.mklt/)$($(mkltm-vp)name)"
	@$($(mkltm-vp)echo) -e "  $($(mkltm-vp)help_tp)install$($(mkltm-vp)help_s)install $($(mkltm-vp)name)"
	@$($(mkltm-vp)echo) -e "  $($(mkltm-vp)help_tp)version$($(mkltm-vp)help_s)shows current version"
	@$($(mkltm-vp)echo) -e "  ..."
	@$($(mkltm-vp)echo) -e "========================================================================"


$(mkltm-vp)version:
	@echo $($(mkltm-vp)name) $($(mkltm-vp)version)

$(mkltm-vp)install:
	


.PHONY: makelets-%

ifeq ($($(mkltm-vp)top),$($(mkltm-vp)true))

else

$(info ,,,)
.DEFAULT_GOAL=$($(mkltm-vp)initial_default_goal)

endif

#endif
$(eval $(mkltm-vp)include_guard-end)
