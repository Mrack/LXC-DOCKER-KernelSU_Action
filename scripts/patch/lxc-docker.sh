patchf(){
    local file=$1
    local patch=$2
    [ -f $file ] && patch -p1 < $patch
}

patchf kernel/cgroup.c $LXC_PATCHES/cgroup.patch
patchf kernel/cgroup/cgroup.c $LXC_PATCHES/cgroup.patch
patchf net/netfilter/xt_qtaguid.c $LXC_PATCHES/xt_qtaguid.patch
# patchf include/linux/mm.h $LXC_PATCHES/mm.patch
# patchf kernel/cgroup/cpuset.c $LXC_PATCHES/cpuset.patch
