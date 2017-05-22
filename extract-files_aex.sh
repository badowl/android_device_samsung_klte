set -e

# Required!
export DEVICE=klte
export DEVICE_COMMON=klte-common
export VENDOR=samsung

./../../$DEVICE_COMMON/extract-files.sh $@
