## Android Build Enviroment

### This is mainly personal script i use to clone and start the build enviroment script from [Akil Narang](https://github.com/akhilnarang) in one shot. it also includes minimal advice on build specs.

##### First open a Terminal in home directory and clone the scripts repo


```bash
  git clone https://github.com/ashoss/scripts.git scripts
```

##### Then start the script ( Note: it may ask for your password )


##### Ubuntu/Debian/Mint/Arch/Manjaro

```bash
  bash setup/setup.sh
```

##### Let the script complete and once it is finished you will be ready for building Android/AOSP


###### Notes:

- The script is compatible with both Ubuntu/Debian distros and Arch distros
- The script may take a while to complete, depending on your hardware and internet speed
- it is recommended that for Android 13 and higher you have at least 6 CPU cores, at least 24GB RAM and at least 350GB storage per ROM. zram is an option for anything less, but will not always be helpful

#### Credits:

- [Akil Narang](https://github.com/akhilnarang)
