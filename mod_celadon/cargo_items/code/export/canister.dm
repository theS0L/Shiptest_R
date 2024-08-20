/datum/export/large/gas_canister/get_cost(obj/O)
	var/obj/machinery/portable_atmospherics/canister/C = O
	var/worth = 10

	worth += C.air_contents.get_moles(GAS_BZ)*0.002
	worth += C.air_contents.get_moles(GAS_STIMULUM)*0.1
	worth += C.air_contents.get_moles(GAS_HYPERNOB)*1
	worth += C.air_contents.get_moles(GAS_TRITIUM)*0.004
	worth += C.air_contents.get_moles(GAS_PLUOXIUM)*0.005
	return worth
