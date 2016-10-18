params ["_zeus"];
gm = _zeus;
if (isServer) then {
	_zeus assignCurator zeus;
};