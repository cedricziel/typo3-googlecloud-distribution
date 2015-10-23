#!/usr/bin/env bash


echo "Hello from the TYPO3 runner";

if [ -z "$TYPO3_ENABLE_FIRST_INSTALL" ]; then

  echo "[TYPO3] First Install Wizard was not enabled";
  rm -f /app/web/FIRST_INSTALL

else

  echo "[TYPO3] Enabling first install wizard";
  touch /app/web/FIRST_INSTALL

fi

if [ -z "$TYPO3_ENABLE_INSTALL_TOOL" ]; then

  echo "[TYPO3] Install tool not enabled"
  rm -f /app/web/typo3conf/ENABLE_INSTALL_TOOL

else
  echo "[TYPO3] Enabling TYPO3 Install Tool";

  if [ ! -d "/app/web/typo3conf" ]; then
    mkdir -p /app/web/typo3conf
  fi

  touch /app/web/typo3conf/ENABLE_INSTALL_TOOL
fi

exec /start "web"
