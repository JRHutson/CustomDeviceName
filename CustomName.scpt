JsOsaDAS1.001.00bplist00�Vscript_�var ConfigUtil = Library("Configuration Utility")

var deviceInfo = ConfigUtil.cNFGvaluesOfSpecifiedProperties("all", ["ECID", "serialNumber"], false)

console.log (deviceInfo)                            �jscr  ��ޭ