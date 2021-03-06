# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python2_7 )

inherit distutils-r1

DESCRIPTION="Cuckoo Sandbox Shellcode Identification & Formatting"
HOMEPAGE="https://cuckoosandbox.org/
	https://pypi.python.org/pypi/egghatch"
SRC_URI="mirror://pypi/${P:0:1}/${PN}/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-libs/capstone[python]
	dev-python/pytest-runner"
DEPEND="${RDEPEND}"
