# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := libuv
DEFS_Debug := \
	'-DHTTP_PARSER_STRICT=0' \
	'-D_LARGEFILE_SOURCE' \
	'-D_FILE_OFFSET_BITS=64' \
	'-DLINUX' \
	'-D_GNU_SOURCE' \
	'-DDEBUG'

# Flags passed to all source files.
CFLAGS_Debug := \
	-pthread \
	-fvisibility=hidden \
	-g \
	--std=gnu89 \
	-pedantic \
	-Wall \
	-Wextra \
	-Wno-unused-parameter \
	-Wstrict-prototypes \
	-g \
	-O0 \
	-std=c++1y

# Flags passed to only C files.
CFLAGS_C_Debug :=

# Flags passed to only C++ files.
CFLAGS_CC_Debug :=

INCS_Debug := \
	-I$(srcdir)/deps/libuv/include \
	-I$(srcdir)/deps/libuv/src

DEFS_Release := \
	'-DHTTP_PARSER_STRICT=0' \
	'-D_LARGEFILE_SOURCE' \
	'-D_FILE_OFFSET_BITS=64' \
	'-DLINUX' \
	'-D_GNU_SOURCE' \
	'-DNDEBUG'

# Flags passed to all source files.
CFLAGS_Release := \
	-pthread \
	-fvisibility=hidden \
	-g \
	--std=gnu89 \
	-pedantic \
	-Wall \
	-Wextra \
	-Wno-unused-parameter \
	-Wstrict-prototypes \
	-O3 \
	-std=c++1y \
	-fstrict-aliasing \
	-fomit-frame-pointer \
	-fdata-sections \
	-ffunction-sections \
	-fPIC

# Flags passed to only C files.
CFLAGS_C_Release :=

# Flags passed to only C++ files.
CFLAGS_CC_Release :=

INCS_Release := \
	-I$(srcdir)/deps/libuv/include \
	-I$(srcdir)/deps/libuv/src

OBJS := \
	$(obj).target/$(TARGET)/deps/libuv/src/fs-poll.o \
	$(obj).target/$(TARGET)/deps/libuv/src/inet.o \
	$(obj).target/$(TARGET)/deps/libuv/src/threadpool.o \
	$(obj).target/$(TARGET)/deps/libuv/src/uv-data-getter-setters.o \
	$(obj).target/$(TARGET)/deps/libuv/src/uv-common.o \
	$(obj).target/$(TARGET)/deps/libuv/src/version.o \
	$(obj).target/$(TARGET)/deps/libuv/src/unix/async.o \
	$(obj).target/$(TARGET)/deps/libuv/src/unix/core.o \
	$(obj).target/$(TARGET)/deps/libuv/src/unix/dl.o \
	$(obj).target/$(TARGET)/deps/libuv/src/unix/fs.o \
	$(obj).target/$(TARGET)/deps/libuv/src/unix/getaddrinfo.o \
	$(obj).target/$(TARGET)/deps/libuv/src/unix/getnameinfo.o \
	$(obj).target/$(TARGET)/deps/libuv/src/unix/loop.o \
	$(obj).target/$(TARGET)/deps/libuv/src/unix/loop-watcher.o \
	$(obj).target/$(TARGET)/deps/libuv/src/unix/pipe.o \
	$(obj).target/$(TARGET)/deps/libuv/src/unix/poll.o \
	$(obj).target/$(TARGET)/deps/libuv/src/unix/process.o \
	$(obj).target/$(TARGET)/deps/libuv/src/unix/signal.o \
	$(obj).target/$(TARGET)/deps/libuv/src/unix/stream.o \
	$(obj).target/$(TARGET)/deps/libuv/src/unix/tcp.o \
	$(obj).target/$(TARGET)/deps/libuv/src/unix/thread.o \
	$(obj).target/$(TARGET)/deps/libuv/src/unix/timer.o \
	$(obj).target/$(TARGET)/deps/libuv/src/unix/tty.o \
	$(obj).target/$(TARGET)/deps/libuv/src/unix/udp.o \
	$(obj).target/$(TARGET)/deps/libuv/src/unix/proctitle.o \
	$(obj).target/$(TARGET)/deps/libuv/src/unix/linux-core.o \
	$(obj).target/$(TARGET)/deps/libuv/src/unix/linux-inotify.o \
	$(obj).target/$(TARGET)/deps/libuv/src/unix/linux-syscalls.o \
	$(obj).target/$(TARGET)/deps/libuv/src/unix/procfs-exepath.o \
	$(obj).target/$(TARGET)/deps/libuv/src/unix/sysinfo-loadavg.o \
	$(obj).target/$(TARGET)/deps/libuv/src/unix/sysinfo-memory.o

# Add to the list of files we specially track dependencies for.
all_deps += $(OBJS)

# CFLAGS et al overrides must be target-local.
# See "Target-specific Variable Values" in the GNU Make manual.
$(OBJS): TOOLSET := $(TOOLSET)
$(OBJS): GYP_CFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE))
$(OBJS): GYP_CXXFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE))

# Suffix rules, putting all outputs into $(obj).

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(srcdir)/%.c FORCE_DO_CMD
	@$(call do_cmd,cc,1)

# Try building from generated source, too.

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj).$(TOOLSET)/%.c FORCE_DO_CMD
	@$(call do_cmd,cc,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj)/%.c FORCE_DO_CMD
	@$(call do_cmd,cc,1)

# End of this set of suffix rules
### Rules for final target.
LDFLAGS_Debug :=

LDFLAGS_Release :=

LIBS :=

$(obj).target/deps/libuv/libuv.a: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(obj).target/deps/libuv/libuv.a: LIBS := $(LIBS)
$(obj).target/deps/libuv/libuv.a: TOOLSET := $(TOOLSET)
$(obj).target/deps/libuv/libuv.a: $(OBJS) FORCE_DO_CMD
	$(call do_cmd,alink_thin)

all_deps += $(obj).target/deps/libuv/libuv.a
# Add target alias
.PHONY: libuv
libuv: $(obj).target/deps/libuv/libuv.a

# Add target alias to "all" target.
.PHONY: all
all: libuv
