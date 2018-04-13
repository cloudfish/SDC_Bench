# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := nodeuv-http
DEFS_Debug := \
	'-DHTTP_PARSER_STRICT=0' \
	'-DLINUX' \
	'-D_LARGEFILE_SOURCE' \
	'-D_FILE_OFFSET_BITS=64' \
	'-D_POSIX_C_SOURCE=200112' \
	'-DDEBUG'

# Flags passed to all source files.
CFLAGS_Debug := \
	-g \
	-O0 \
	-std=c++1y \
	-g \
	-O0 \
	-std=c++1y

# Flags passed to only C files.
CFLAGS_C_Debug :=

# Flags passed to only C++ files.
CFLAGS_CC_Debug :=

INCS_Debug := \
	-I$(srcdir)/deps/nodeuv-uri \
	-I$(srcdir)/deps/libuv/include \
	-I$(srcdir)/deps/http-parser

DEFS_Release := \
	'-DHTTP_PARSER_STRICT=0' \
	'-DLINUX' \
	'-D_LARGEFILE_SOURCE' \
	'-D_FILE_OFFSET_BITS=64' \
	'-D_POSIX_C_SOURCE=200112' \
	'-DNDEBUG'

# Flags passed to all source files.
CFLAGS_Release := \
	-O3 \
	-std=c++1y \
	-fstrict-aliasing \
	-fomit-frame-pointer \
	-fdata-sections \
	-ffunction-sections \
	-fPIC \
	-O3 \
	-std=c++1y \
	-fstrict-aliasing \
	-fomit-frame-pointer \
	-fdata-sections \
	-ffunction-sections \
	-fPIC \
	-Wno-narrowing

# Flags passed to only C files.
CFLAGS_C_Release :=

# Flags passed to only C++ files.
CFLAGS_CC_Release :=

INCS_Release := \
	-I$(srcdir)/deps/nodeuv-uri \
	-I$(srcdir)/deps/libuv/include \
	-I$(srcdir)/deps/http-parser

OBJS := \
	$(obj).target/$(TARGET)/src/http.o \
	$(obj).target/$(TARGET)/src/http-server.o \
	$(obj).target/$(TARGET)/src/http-client.o

# Add to the list of files we specially track dependencies for.
all_deps += $(OBJS)

# CFLAGS et al overrides must be target-local.
# See "Target-specific Variable Values" in the GNU Make manual.
$(OBJS): TOOLSET := $(TOOLSET)
$(OBJS): GYP_CFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE))
$(OBJS): GYP_CXXFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE))

# Suffix rules, putting all outputs into $(obj).

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(srcdir)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# Try building from generated source, too.

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj).$(TOOLSET)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# End of this set of suffix rules
### Rules for final target.
LDFLAGS_Debug :=

LDFLAGS_Release :=

LIBS :=

$(obj).target/libnodeuv-http.a: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(obj).target/libnodeuv-http.a: LIBS := $(LIBS)
$(obj).target/libnodeuv-http.a: TOOLSET := $(TOOLSET)
$(obj).target/libnodeuv-http.a: $(OBJS) FORCE_DO_CMD
	$(call do_cmd,alink_thin)

all_deps += $(obj).target/libnodeuv-http.a
# Add target alias
.PHONY: nodeuv-http
nodeuv-http: $(obj).target/libnodeuv-http.a

# Add target alias to "all" target.
.PHONY: all
all: nodeuv-http
