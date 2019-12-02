**How to installation**

Open [_Appium for Windows_](https://github.com/appium/appium/blob/master/docs/en/appium-setup/running-on-windows.md) and follow setup.
Open [_Appium for mac_](https://gist.github.com/maggiesavovska/d2d47345c92fdf70ed4ec10ebb34c170) and follow setup.

**Running:**

* Open a **cmd** window and type `appium`. This will start the server
* Open a **real / emulator / simulator device** to launch the automation app. If you want to run by emulator open [_Run emulator android_](https://developer.android.com/studio/run/emulator)
* Open `appium.txt` from `config` folder and change _deviceName_ to your currently running _device / emulator_ name (eg: "Sehatq")
* From anothor **cmd** window `cd` to the project folder
* Run `bundle install`
* Run `bundle exec cucumber features\login.feature` to start the scenario test
* Or you can just run with `cucumber features\login.feature` to start the scenario test