JsOsaDAS1.001.00bplist00�Vscript_|ObjC.import('Cocoa')

var app = Application.currentApplication()
app.includeStandardAdditions = true

var cocoaStrPath = $("~/Desktop").stringByExpandingTildeInPath
var defaultFolderRef = Path(cocoaStrPath.js)
var path = app.chooseFile({defaultLocation:defaultFolderRef})
var pathString = path.toString()

var Numbers = Application ('Numbers')

var scanned = Numbers.open(path)

var Finder = Application('Finder')

var ConfigUtil = Library("Configuration Utility")	
var deviceInfo = ConfigUtil.cNFGvaluesOfSpecifiedProperties("all", ["ECID", "serialNumber"], false)	var [deviceCount, propertyTitles, deviceECIDs, serialNumbers] = deviceInfo	var baseName = "SSD Mobility"	for (var i = 0; i < deviceCount; i++) {	var ecid = deviceECIDs[i]	var serialNumber = serialNumbers[i]	var deviceName = baseName + " " + serialNumber			ConfigUtil.cNFGrenameSpecifiedDevice(ecid, deviceName)}
                              �jscr  ��ޭ