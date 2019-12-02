**How to installation**

Open [_Appium for Windows_](https://github.com/appium/appium/blob/master/docs/en/appium-setup/running-on-windows.md) and follow setup.
Open [_Appium for mac_](https://gist.github.com/maggiesavovska/d2d47345c92fdf70ed4ec10ebb34c170) and follow setup.

**Running:**

* If you use windows open a **cmd** window and type `appium`, if use mac just type in terminal `appium`. This will start the server
* Open a **real / emulator / simulator device** to launch the automation app. If you want to run by emulator open [_Run emulator android_](https://developer.android.com/studio/run/emulator)
* Open `appium.txt` from `config` folder and change _deviceName_ to your currently running _device / emulator_ name (eg: "Sehatq")
* Open `appium.txt` set location `path` from apk that will be installed (eg: "/Users/jim/Documents/Automation/CucumberAppium/CucumberAppiumSehatq/features/support/sehatq-staging-debug.apk")
* From anothor **cmd** window `cd` to the project folder
* Run `bundle install`
* Run `bundle exec cucumber features\login.feature` to start the scenario test
* Or you can also run with `cucumber features\login.feature`