# Warsim-Mac-Crossover-Launcher
This is a simple script called `run_warsim.sh` that you can run to launch `Warsim: The Realm of Aslona` on MacOS using Crossover. It took me a couple of hours to figure out how to do this, so I thought I'd share it with the world to help out fellow Mac/Crossover users who want to play this neat game.

To run the script, you must have Crossover already installed. It may be possible to run this script with WINE and NOT Crossover, perhaps with slight modification, but I do not know.

You need to follow a few steps before running the script:
1. Launch the Crossover app.
2. Select your Windows bottle in the GUI.
3. Click the menu item: Bottle -> Open Shell. Your Terminal app should open. (There may be a way to automate this step in the script, but I don't know how.)
4. From the newly opened Terminal, set any of the following environment variables, if the defaults don't work for you:

| Variable        | Description                                    | Default      | Comments
| --------------- | ---------------------------------------------- | ------------ | ---------------------------------------------------------------------------------------------
| HOME_DIR        | User home dir                                  | `~ `                                                                    | This probably doesn't need to be set manually as the script uses `~` which should resolve to your home dir
| CX_BOTTLE     | Name of your bottle that you've already created with Crossover | This SHOULD default to the bottle you launched the Terminal from. (It does for me, anyway.)                                                        | Hopefully you do not need to set this. If you do, be aware that you will need to surround the name with quotes if your bottle name has spaces (or you can escape the spaces: `\ `)
| WINE_PATH       | Path to WINE under Crossover.app               | `/Applications/CrossOver.app/Contents/SharedSupport/CrossOver/bin/wine` | You probably don't need to set this.
| GAME_DIR        | The game dir (not full path to the game .exe)  | `${HOME_DIR}/Library/Application\ Support/CrossOver/Bottles/${CX_BOTTLE}/drive_c/Program\ Files\ (x86)/Steam/steamapps/common/Warsim\ The\ Realm\ of\ Aslona/}` | likely doesn't need to change unless you're not using Drive C;
| WARSIM_FILENAME | The filename of the game .exe                  | `Warsim.exe` | likely doesn't need to change      

If you're not experienced in bash/zsh/other shell scripting, the above may be intimidating, but:

## The "too long didn't read" **(tl;dr)** is that for most users you can likely just run:

```
./run_warsim.sh
```

Or replace the `.` above with the directory in which the run_warsim.sh script resides.

Should the above fail, then probably one or more of the variables needs to be set, or a different version of one of the apps involved breaks this script. I have only tested this script on Crossover 21.1, on MacOS 12.2.1, with Warsim Beta 0.8.4.8 and a Windows 7 64-bit Crossover bottle. It's possible with other releases of any of these, different names/paths/something else may cause the script to break. You can email me at mwrynn-at-gmail-dot-com if you need any help. Can't guarantee fixing this script will be a top priority at any given time, though.

An example of how to run the script with non-default variables (I am setting two of them in this example):
```
CX_BOTTLE="My Bottle" GAME_DIR="/some/other/dir/where/the/game/lives" ./run_warsim.sh
```

Enjoy and good luck running the kingdom!

-Mark W
