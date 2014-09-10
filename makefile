include mkltm.mk

files =
	mkltm.mk \

all: package

: $(files)
	tar -cvf - $(^) | gzip -c - > $(@)
