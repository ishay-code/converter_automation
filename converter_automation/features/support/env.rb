
require 'em/pure_ruby' if not defined? (EventMachine)
require "appium_lib"
def caps
  {caps: {
    deviceName: "Name",
    platformName: "Android",
    app: (File.join(File.dirname(file_name __FILE__), "ultimate_converter.apk")),
    appPackage: "com.physphil.android.unitconverterultimate",
    appActivity: "com.physphil.android.unitconverterultimate.MainActivity",
  newCommandTimeout: "3600"
}}
end
Appium::Driver.new(caps, true)
Appium.promote_appium_methods Object