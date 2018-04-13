# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := run-tests
DEFS_Debug := \
	'-DHTTP_PARSER_STRICT=0' \
	'-D_LARGEFILE_SOURCE' \
	'-D_FILE_OFFSET_BITS=64' \
	'-DLINUX' \
	'-D_GNU_SOURCE' \
	'-D_POSIX_C_SOURCE=200112' \
	'-DDEBUG'

# Flags passed to all source files.
CFLAGS_Debug := \
	-pthread \
	-Wno-long-long \
	-g \
	-O0 \
	-std=c++1y

# Flags passed to only C files.
CFLAGS_C_Debug :=

# Flags passed to only C++ files.
CFLAGS_CC_Debug :=

INCS_Debug := \
	-I$(srcdir)/deps/libuv/include

DEFS_Release := \
	'-DHTTP_PARSER_STRICT=0' \
	'-D_LARGEFILE_SOURCE' \
	'-D_FILE_OFFSET_BITS=64' \
	'-DLINUX' \
	'-D_GNU_SOURCE' \
	'-D_POSIX_C_SOURCE=200112' \
	'-DNDEBUG'

# Flags passed to all source files.
CFLAGS_Release := \
	-pthread \
	-Wno-long-long \
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
	-I$(srcdir)/deps/libuv/include

OBJS := \
	$(obj).target/$(TARGET)/deps/libuv/test/blackhole-server.o \
	$(obj).target/$(TARGET)/deps/libuv/test/echo-server.o \
	$(obj).target/$(TARGET)/deps/libuv/test/run-tests.o \
	$(obj).target/$(TARGET)/deps/libuv/test/runner.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-get-loadavg.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-active.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-async.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-async-null-cb.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-callback-stack.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-callback-order.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-close-fd.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-close-order.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-connection-fail.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-cwd-and-chdir.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-default-loop-close.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-delayed-accept.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-eintr-handling.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-error.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-embed.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-emfile.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-env-vars.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-fail-always.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-fork.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-fs.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-fs-copyfile.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-fs-event.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-getters-setters.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-get-currentexe.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-get-memory.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-get-passwd.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-getaddrinfo.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-gethostname.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-getnameinfo.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-getsockname.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-handle-fileno.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-homedir.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-hrtime.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-idle.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-ip6-addr.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-ipc.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-ipc-send-recv.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-loop-handles.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-loop-alive.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-loop-close.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-loop-stop.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-loop-time.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-loop-configure.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-walk-handles.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-watcher-cross-stop.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-multiple-listen.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-osx-select.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-pass-always.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-ping-pong.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-pipe-bind-error.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-pipe-connect-error.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-pipe-connect-multiple.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-pipe-connect-prepare.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-pipe-getsockname.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-pipe-pending-instances.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-pipe-sendmsg.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-pipe-server-close.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-pipe-close-stdout-read-stdin.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-pipe-set-non-blocking.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-pipe-set-fchmod.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-platform-output.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-poll.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-poll-close.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-poll-close-doesnt-corrupt-stack.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-poll-closesocket.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-poll-oob.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-process-title.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-process-title-threadsafe.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-queue-foreach-delete.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-ref.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-run-nowait.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-run-once.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-semaphore.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-shutdown-close.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-shutdown-eof.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-shutdown-twice.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-signal.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-signal-multiple-loops.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-socket-buffer-size.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-spawn.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-fs-poll.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-stdio-over-pipes.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-tcp-alloc-cb-fail.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-tcp-bind-error.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-tcp-bind6-error.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-tcp-close.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-tcp-close-accept.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-tcp-close-while-connecting.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-tcp-create-socket-early.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-tcp-connect-error-after-write.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-tcp-shutdown-after-write.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-tcp-flags.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-tcp-connect-error.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-tcp-connect-timeout.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-tcp-connect6-error.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-tcp-open.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-tcp-write-to-half-open-connection.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-tcp-write-after-connect.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-tcp-writealot.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-tcp-write-fail.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-tcp-try-write.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-tcp-unexpected-read.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-tcp-oob.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-tcp-read-stop.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-tcp-write-queue-order.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-threadpool.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-threadpool-cancel.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-thread-equal.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-tmpdir.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-mutexes.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-thread.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-barrier.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-condvar.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-timer-again.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-timer-from-check.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-timer.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-tty.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-udp-alloc-cb-fail.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-udp-bind.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-udp-create-socket-early.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-udp-dgram-too-big.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-udp-ipv6.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-udp-open.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-udp-options.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-udp-send-and-recv.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-udp-send-hang-loop.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-udp-send-immediate.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-udp-send-unreachable.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-udp-multicast-join.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-udp-multicast-join6.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-dlerror.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-udp-multicast-ttl.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-ip4-addr.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-udp-multicast-interface.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-udp-multicast-interface6.o \
	$(obj).target/$(TARGET)/deps/libuv/test/test-udp-try-send.o \
	$(obj).target/$(TARGET)/deps/libuv/test/runner-unix.o

# Add to the list of files we specially track dependencies for.
all_deps += $(OBJS)

# Make sure our dependencies are built before any of us.
$(OBJS): | $(obj).target/deps/libuv/libuv.a

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
LDFLAGS_Debug := \
	-pthread

LDFLAGS_Release := \
	-pthread

LIBS := \
	-lutil \
	-lm \
	-ldl \
	-lrt

$(builddir)/run-tests: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(builddir)/run-tests: LIBS := $(LIBS)
$(builddir)/run-tests: LD_INPUTS := $(OBJS) $(obj).target/deps/libuv/libuv.a
$(builddir)/run-tests: TOOLSET := $(TOOLSET)
$(builddir)/run-tests: $(OBJS) $(obj).target/deps/libuv/libuv.a FORCE_DO_CMD
	$(call do_cmd,link)

all_deps += $(builddir)/run-tests
# Add target alias
.PHONY: run-tests
run-tests: $(builddir)/run-tests
