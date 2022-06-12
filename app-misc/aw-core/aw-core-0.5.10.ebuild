# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=poetry
PYTHON_COMPAT=( python3_{8..10} )

inherit distutils-r1

DESCRIPTION="Core library for ActivityWatch"
HOMEPAGE="https://activitywatch.net"
LICENSE="MPL-2.0"

inherit git-r3
EGIT_REPO_URI="https://github.com/ActivityWatch/${PN}.git"
EGI_COMMIT="v${PV}"

KEYWORDS="~amd64"
SLOT="0"
IUSE="test"

RDEPEND="
	dev-python/appdirs[${PYTHON_USEDEP}]
	dev-python/deprecation[${PYTHON_USEDEP}]
	dev-python/iso8601[${PYTHON_USEDEP}]
	dev-python/jsonschema[${PYTHON_USEDEP}]
	dev-python/peewee[${PYTHON_USEDEP}]
	dev-python/rfc3339-validator[${PYTHON_USEDEP}]
	dev-python/strict-rfc3339[${PYTHON_USEDEP}]
	dev-python/TakeTheTime[${PYTHON_USEDEP}]
	dev-python/timeslot[${PYTHON_USEDEP}]
	dev-python/tomlkit[${PYTHON_USEDEP}]
"

DEPEND="
	${RDEPEND}
"

distutils_enable_tests pytest
