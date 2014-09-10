
vp=x-y-z-

$(vp)xxx = yyy

$(info vp=$(vp))
$(info $(vp)xxx=$($(vp)xxx))

define start
ifdef vp
endef

define end
$(info abc)
else
$(info xyz)
endif
endef

$(eval start)
$(eval end)
