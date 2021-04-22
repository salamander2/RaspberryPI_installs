# RaspberryPI_installs
Install scripts for my Raspberry Pis.

There are a lot of useful scripts here, in particular, how to create a new sudo user to replace the default 'pi'.  Which scripts you want to use depends on what your RPi is being used for. A headless server (running the lite version of the OS) is quite different from a GUI based machine. The two main `run_install...` scripts are setup so that you just comment/uncomment the sections that you want.  🚨 You can also just use whichever individual scripts you want by themselves. 🚨

1️⃣ First follow the steps in `1_setup`

2️⃣ Then run `./run_install_part1`  This will run various system config changes and then create a new superuser.

3️⃣ After that, you need to log  off and on again as the NEW user that you've just created. 

4️⃣ Now run `./run_install_part2`. After running various commands to make sure that the new user works, the scripts will delete user 'pi'. It will continue by installing user specific changes.

## 💥 Problems: 

▶️ The SSH update can lock you out of your computer    
▶️ GUI vs Server makes a difference. There are extra things I want to configure on a GUI based system, eg. single click on icons, adding icons to desktop ...

