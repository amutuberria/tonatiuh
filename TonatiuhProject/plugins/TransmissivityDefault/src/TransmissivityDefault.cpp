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

#include "TransmissivityDefault.h"

SO_NODE_SOURCE( TransmissivityDefault );


void TransmissivityDefault::initClass()
{
	SO_NODE_INIT_CLASS( TransmissivityDefault, TTransmissivity, "TTransmissivity" );
}

TransmissivityDefault::TransmissivityDefault( )
{
	SO_NODE_CONSTRUCTOR( TransmissivityDefault );
	SO_NODE_ADD_FIELD( constant, ( 0.001 ) );
}

TransmissivityDefault::~TransmissivityDefault()
{

}

bool TransmissivityDefault::IsTransmitted( double distance, RandomDeviate& rand ) const
{
	if( rand.RandomDouble() < exp( -constant.getValue() * distance  ) )	return true;

	return false;
}
