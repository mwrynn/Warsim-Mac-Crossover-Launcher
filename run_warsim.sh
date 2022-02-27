#!/bin/zsh

set -e

echo "To run this script you must first open Terminal from Crossover: Bottle -> Open Shell"

HOME_DIR=${HOME_DIR:-~}
CX_BOTTLE=${CX_BOTTLE:-Steam\ Win7-64}
WINE_PATH=${WINE_PATH:-/Applications/CrossOver.app/Contents/SharedSupport/CrossOver/bin/wine}
GAME_DIR=${GAME_DIR:-${HOME_DIR}/Library/Application\ Support/CrossOver/Bottles/${CX_BOTTLE}/drive_c/Program\ Files\ (x86)/Steam/steamapps/common/Warsim\ The\ Realm\ of\ Aslona/}
WARSIM_FILENAME=${WARSIM_FILENAME:-Warsim.exe}

cd ${GAME_DIR}

${WINE_PATH} --cx-app ${WARSIM_FILENAME}
