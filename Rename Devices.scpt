JsOsaDAS1.001.00bplist00�Vscript_:
var Finder = Application('Finder')

var ConfigUtil = Library("Configuration Utility")	
var Scanned = Finder.selection();

console.log(Scanned)
var deviceInfo = ConfigUtil.cNFGvaluesOfSpecifiedProperties("all", ["ECID", "serialNumber"], false)	var [deviceCount, propertyTitles, deviceECIDs, serialNumbers] = deviceInfo	var baseName = "SSD Mobility"	for (var i = 0; i < deviceCount; i++) {	var ecid = deviceECIDs[i]	var serialNumber = serialNumbers[i]	var deviceName = baseName + " " + serialNumber			ConfigUtil.cNFGrenameSpecifiedDevice(ecid, deviceName)}
                              Pjscr  ��ޭ