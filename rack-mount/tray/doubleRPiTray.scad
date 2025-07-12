use <./tray.scad>

/*
  Parametric rack-mount tray:
  Dimensions can be adjusted using the variables below. You can also add mounting holes to fasten things that have
  screw holes at the bottom.

  !!! Please also make sure that the correct rack frame preset is set in rackFrame.scad !!!
*/

module traySystem (

// begin config ////////////////////////////////////////////////////////////////////////////////////////////////////////

trayU = 2,

// these dimensions are the total base width including padding not usable space. 
// e.g. 145 baseWidth and 3 sideThickness = 145-(3*2) = 139mm useable space.
baseWidth = 185,
baseDepth = 100,

baseThickness = 3, // tray bottom thickness
frontThickness = 3, // front plate thickness
sideThickness = 3,

backLipHeight = 4,
frontLipHeight = 4,

sideSupport = true,
trayLeftPadding = 10, // extra space between the left rail and tray. configure this to move the tray left/right.

mountPointType = "m3",
mountPointElevation = 12, // basically standoff height

// offset for 1st rpi
x1Offset = 30.65,
y1Offset = 20.65,

// offset for 2nd rpi
x2Offset = 120.65,
y2Offset = 20.65,



// end config //////////////////////////////////////////////////////////////////////////////////////////////////////////

) {
    
  // add/config standoff coordinates here. Format is [[x,y]]
mountPoints = [    
    [x1Offset, y1Offset,0],
    [x1Offset + 49, y1Offset,0],
    [x1Offset, y1Offset + 58,0],
    [x1Offset + 49, y1Offset + 58,0],
    
    [x2Offset, y2Offset,0],
    [x2Offset + 49, y2Offset,0],
    [x2Offset, y2Offset + 58,0],
    [x2Offset + 49, y2Offset + 58,0],
];

  bottomScrewTray (
    u = trayU,
    trayWidth = baseWidth,
    trayDepth = baseDepth,
    trayThickness = baseThickness,
    frontLipHeight = frontLipHeight,
    backLipHeight = backLipHeight,
    mountPoints = mountPoints,
    frontThickness = frontThickness,
    sideThickness = sideThickness,
    mountPointElevation = mountPointElevation,
    mountPointType = mountPointType,
    sideSupport = sideSupport,
    trayLeftPadding = trayLeftPadding
  );
}

traySystem();
