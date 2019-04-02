/***************************************************************************
Copyright (C) 2008 by the Tonatiuh Software Development Team.

This file is part of Tonatiuh.

Tonatiuh program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
***************************************************************************/

#ifndef TIMER_H_
#define TIMER_H_

#if defined ( WIN32 )
#include <windows.h>
#else
#include <sys/time.h>
#endif

class Timer
{
public:
	Timer();
	~Timer();

	void Start();
    void Stop();
    void Reset();
    double Time();
private:
    // Private Timer Data
    double m_time0, m_elapsed;
    bool m_running;
    double GetTime();

    #if defined( WIN32 )
    // Private Windows Timer Data
		LARGE_INTEGER m_performance_counter, m_performance_frequency;
		double m_oneoverfrequency;
	#else
    // Private UNIX Timer Data
		struct timeval m_timeofday;
	#endif
};

#endif /* TIMER_H_ */
