# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="7"

PATCH_VER="1"
THEAD_VER="2.6.1"

inherit toolchain

KEYWORDS="~alpha ~amd64 ~arm ~arm64 ~hppa ~ia64 ~m68k ~mips ~ppc ~ppc64 ~riscv ~s390 ~sparc ~x86"
SRC_URI="https://github.com/T-head-Semi/gcc/archive/tags/THead-${THEAD_VER}.tar.gz -> ${P}.tar.gz"
S="${WORKDIR}/gcc-tags-THead-${THEAD_VER}"

RDEPEND=""
BDEPEND="${CATEGORY}/binutils"
