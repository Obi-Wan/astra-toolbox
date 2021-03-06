/*
-----------------------------------------------------------------------
Copyright: 2010-2016, iMinds-Vision Lab, University of Antwerp
           2014-2016, CWI, Amsterdam

Contact: astra@uantwerpen.be
Website: http://www.astra-toolbox.com/

This file is part of the ASTRA Toolbox.


The ASTRA Toolbox is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

The ASTRA Toolbox is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with the ASTRA Toolbox. If not, see <http://www.gnu.org/licenses/>.

-----------------------------------------------------------------------
*/

#ifndef _MSC_VER

#include "astra/swrap.h"
#include <cerrno>

errno_t fopen_s(FILE** pFile, const char* filename, const char* mode)
{
	if (!pFile)
		return EINVAL;

	FILE* x = fopen(filename, mode);
	if (!x)
		return errno;

	*pFile = x;
	return 0;
}

#endif
