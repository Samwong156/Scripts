STEP="5"

volume() {
  pamixer --get-volume
}

case $BLOCK_BUTTON in
  1) pavucontrol ;;
  3) pamixer --toggle-mute ;;  # right click, mute/unmute
  4) pamixer --increase ${STEP} ;; # scroll up, increase
  5) pamixer --decrease ${STEP} ;; # scroll down, decrease
esac

volume
