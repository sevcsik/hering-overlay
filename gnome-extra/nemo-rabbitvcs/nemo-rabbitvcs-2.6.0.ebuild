# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
PYTHON_COMPAT=( python2_7 )

inherit python-single-r1

DESCRIPTION="media-columns for the Nemo file manager"
HOMEPAGE="https://github.com/linuxmint/nemo-extensions"
SRC_URI="https://github.com/linuxmint/nemo-extensions/archive/2.4.x.tar.gz"
S="${WORKDIR}/nemo-extensions-2.4.x/${PN}"

LICENSE=""
SLOT="0"
KEYWORDS="amd64"
IUSE=""

DEPEND=">=gnome-extra/nemo-python-2.4.0"
RDEPEND="${DEPEND}
	dev-vcs/rabbitvcs" 

src_install() {
	default
	python_fix_shebang .
	exeinto usr/share/nemo-python/extensions/
	doexe RabbitVCS.py
}
