#!/usr/bin/env bash

tmpfile=$(date +\%Y_\%m_\%d\_%H_\%M_\%S)-iso.tmp

echo "$NAUTILUS_SCRIPT_SELECTED_FILE_PATHS" | tr -d '\r' > $tmpfile

mkisofs -o $(date +\%Y_\%m_\%d\_%H_\%M_\%S).iso $(cat $tmpfile)

rm $tmpfile
