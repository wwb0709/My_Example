# set params
NDK_ROOT=/workspace/android-dev/android-ndk-r6
COCOS2DX_ROOT=/Users/walzer/Desktop/GDC2012-walzer/TweeJump-X/tweejump-android/
GAME_ROOT=$COCOS2DX_ROOT/tweejump
GAME_ANDROID_ROOT=$GAME_ROOT/android
RESOURCE_ROOT=$GAME_ROOT/Resources

# make sure assets is exist
if [ -d $GAME_ANDROID_ROOT/assets ]; then
    rm -rf $GAME_ANDROID_ROOT/assets
fi

mkdir $GAME_ANDROID_ROOT/assets

# copy resources
for file in $RESOURCE_ROOT/*
do
    if [ -d $file ]; then
        cp -rf $file $GAME_ANDROID_ROOT/assets
    fi

    if [ -f $file ]; then
        cp $file $GAME_ANDROID_ROOT/assets
    fi
done

# build
$NDK_ROOT/ndk-build -C $GAME_ANDROID_ROOT $*

