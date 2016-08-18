
//**************************************************************
// Map Datum -- Bunkerstation
//**************************************************************

/datum/map/active
	nameShort = "bunker"
	nameLong = "Bunker Station"
	map_dir = "boxstation"
	tDomeX = 128
	tDomeY = 69
	tDomeZ = 2
	zLevels = list(
		/datum/zLevel/station,
		/datum/zLevel/centcomm,
		)
//	enabled_jobs = list(/datum/job/trader)

////////////////////////////////////////////////////////////////
#include "defficiency/pipes.dm" // Atmos layered pipes.
#include "bunker/bunkerstation.dmm"
