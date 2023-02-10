# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="7"

PATCH_VER="6"
THEAD_VER="2.6.1"

inherit toolchain

KEYWORDS="~riscv"
SRC_URI="https://github.com/T-head-Semi/gcc/archive/tags/THead-${THEAD_VER}.tar.gz -> ${P}.tar.gz
	https://dev.gentoo.org/~sam/distfiles/${P}-patches-${PATCH_VER}.tar.bz2
"
S="${WORKDIR}/gcc-tags-THead-${THEAD_VER}"

RDEPEND=""
BDEPEND="${CATEGORY}/binutils"

src_prepare() {
	rm -v "${WORKDIR}/patch/23_all_disable-riscv32-ABIs.patch"
	export EXTRA_ECONF="--disable-bootstrap"
	toolchain_src_prepare
}
