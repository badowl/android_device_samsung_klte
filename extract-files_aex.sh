set -e

# Required!
export DEVICE=klte
export DEVICE_COMMON=msm8974-common
export VENDOR=samsung

./../../$VENDOR/$DEVICE_COMMON/extract-files.sh $@
