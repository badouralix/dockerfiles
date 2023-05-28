# linux-headers

[![Docker Pulls](https://img.shields.io/docker/pulls/badouralix/linux-headers?label=pulls&logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/linux-headers)
[![Docker Stars](https://img.shields.io/docker/stars/badouralix/linux-headers?label=stars&logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/linux-headers)
[![Docker Image Version (latest by date)](https://img.shields.io/docker/v/badouralix/linux-headers?logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/linux-headers)
[![Docker Image Size (latest by date)](https://img.shields.io/docker/image-size/badouralix/linux-headers?label=size&logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/linux-headers)

This **Dockerfile** builds a toolbox for running eBPF programs on [Docker Desktop](https://www.docker.com/products/docker-desktop).

Watch <https://youtu.be/bGAVrtb_tFs> for a quick introduction to eBPF tracing.

See the repo on [Docker Hub](https://hub.docker.com/r/badouralix/linux-headers/).

## Usage

Make sure to use the correct kernel release, because eBPF requires the exact kernel headers without BTF.

```bash
export DOCKER_DESKTOP_KERNEL_RELEASE=$(docker run --rm alpine uname -r)  # For instance 5.15.49-linuxkit
docker run -it --rm --cap-add=SYS_ADMIN --cap-add=SYSLOG badouralix/linux-headers:$DOCKER_DESKTOP_KERNEL_RELEASE
```

![biolatency-bpfcc](https://github.com/badouralix/dockerfiles/assets/19719047/c06f3447-5b32-4223-8ed8-774629a6c48b)

## Frequently Asked Questions

### Why `CAP_SYS_ADMIN` ?

Not using `--cap-add=SYS_ADMIN` in the `docker run` command results immediately in the following error :

```text
mount: /sys/kernel/debug: permission denied.
```

### Why `CAP_SYSLOG` ?

Not using `--cap-add=SYSLOG` in the `docker run` command results in the following error when running `execsnoop-bpfcc` :

```text
cannot attach kprobe, probe entry may not exist
Traceback (most recent call last):
  File "/usr/sbin/execsnoop-bpfcc", line 245, in <module>
    b.attach_kprobe(event=execve_fnname, fn_name="syscall__execve")
  File "/usr/lib/python3/dist-packages/bcc/__init__.py", line 845, in attach_kprobe
    raise Exception("Failed to attach BPF program %s to kprobe %s"
Exception: Failed to attach BPF program b'syscall__execve' to kprobe b'sys_execve', it's not traceable (either non-existing, inlined, or marked as "notrace")
```

See <https://stackoverflow.com/a/55592796> and <https://github.com/iovisor/bcc/issues/2670>.

### Why linux headers ?

In order to build eBPF programs, compilers need the local kernel headers. With Docker Desktop, it means the kernel headers of the underlying virtual machine. These headers are available in <https://hub.docker.com/r/docker/for-desktop-kernel> as shown by [`dive`](https://github.com/wagoodman/dive).

```bash
dive docker/for-desktop-kernel:5.15.49-13422a825f833d125942948cf8a8688cef721ead
```

```text
┃ ● Layers ┣━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
Cmp   Size  Command
    350 MB  FROM e7f5e092709a618

│ Layer Details ├───────────────────────────────────────────────────────────────────────

Tags:   (unavailable)
Id:     e7f5e092709a61807859d5669414c448ec9d7b1cfaa959782596b5eb34555cd2
Digest: sha256:234146d432fbf071cb2308baf94bcd19fe266e8453ca1f628913665b178e9f5e
Command:
COPY /out/* / # buildkit

│ Image Details ├───────────────────────────────────────────────────────────────────────

Image name: docker/for-desktop-kernel:5.15.49-13422a825f833d125942948cf8a8688cef721ead
Total Image size: 350 MB
Potential wasted space: 0 B
Image efficiency score: 100 %

Count   Total Space  Path

│ Aggregated Layer Contents ├───────────────────────────────────────────────────────────
Permission     UID:GID       Size  Filetree
-rw-r--r--         0:0     6.0 MB  ├── System.map
-rw-r--r--         0:0     1.7 kB  ├── intel-ucode-license.txt
-rw-r--r--         0:0     4.7 MB  ├── intel-ucode.cpio
-rw-r--r--         0:0     9.2 MB  ├── kernel
-rw-r--r--         0:0       56 B  ├── kernel-builder
-rw-r--r--         0:0      84 MB  ├── kernel-dev.tar
-rw-r--r--         0:0     6.5 MB  ├── kernel-headers.tar
-rw-r--r--         0:0       80 B  ├── kernel-source-info
-rw-r--r--         0:0     110 MB  ├── kernel.tar
-rw-r--r--         0:0     129 MB  └── linux.tar.xz
```

### Why not using BTF ?

Having to install linux headers is quite an overhead and heavily reduces the portability of eBPF programs. This topic is discussed in details in <https://nakryiko.com/posts/bpf-portability-and-co-re>. An alternative is to use BTF. Unfortunately, this is not supported by the Docker Desktop kernel yet : <https://github.com/docker/for-mac/issues/6800>.

## License

Unless expressly stated otherwise, all contents licensed under the [MIT License](https://github.com/badouralix/dockerfiles/blob/main/LICENSE).
