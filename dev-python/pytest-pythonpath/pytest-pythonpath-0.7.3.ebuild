# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="7"

DISTUTILS_USE_SETUPTOOLS=bdepend
PYTHON_COMPAT=( python3_7 )

inherit distutils-r1

DESCRIPTION="py.test plugin for adding to the PYTHONPATH from the pytests.ini file before tests run"
HOMEPAGE="
	https://github.com/bigsassy/pytest-pythonpath
	https://pypi.org/project/pytest-pythonpath
"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-python/pytest[${PYTHON_USEDEP}]"

distutils_enable_tests pytest
