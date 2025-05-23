# -----------------------------------------------------------------------
# Copyright: 2010-2022, imec Vision Lab, University of Antwerp
#            2013-2022, CWI, Amsterdam
#
# Contact: astra@astra-toolbox.com
# Website: http://www.astra-toolbox.com/
#
# This file is part of the ASTRA Toolbox.
#
#
# The ASTRA Toolbox is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# The ASTRA Toolbox is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with the ASTRA Toolbox. If not, see <http://www.gnu.org/licenses/>.
#
# -----------------------------------------------------------------------

from libcpp.string cimport string
from libcpp.memory cimport unique_ptr

from . cimport PyXMLDocument
from .PyXMLDocument cimport XMLDocument
from .PyXMLDocument cimport XMLNode

from .PyIncludes cimport *

cdef configToDict(Config *)
cdef XMLConfig * dictToConfig(string rootname, dc) except NULL
cdef CFloat32VolumeData3D* linkVolFromGeometry(const CVolumeGeometry3D &pGeometry, data) except NULL
cdef CFloat32ProjectionData3D* linkProjFromGeometry(const CProjectionGeometry3D &pGeometry, data) except NULL
cdef unique_ptr[CProjectionGeometry3D] createProjectionGeometry3D(geometry) except *
cdef unique_ptr[CVolumeGeometry3D] createVolumeGeometry3D(geometry) except *

