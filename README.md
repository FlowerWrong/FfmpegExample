# FfmpegExample

## How to build libijkffmpeg.so? See [ijkplayer build on android](https://github.com/Bilibili/ijkplayer#build-android).

```
git clone https://github.com/Bilibili/ijkplayer.git ijkplayer-android
cd ijkplayer-android
git checkout -B latest k0.4.5.1

./init-android.sh

cd android/contrib
./compile-ffmpeg.sh clean
./compile-ffmpeg.sh all
```

Now on the `ijkplayer-android/android/contrib/build` dir, you can see build files on many cpu architectures.
Then copy they to your project in jin. See [ffmpeg-example jin dir](https://github.com/FlowerWrong/FfmpegExample/tree/master/app/src/main/jni).

## References

* [Mac环境下Android Studio移植FFmpeg](http://www.itdadao.com/article/122434/)
* [Android.mk](http://developer.android.com/ndk/guides/android_mk.html)
* [Application.mk](http://developer.android.com/ndk/guides/application_mk.html)
* Android C++高级变成------使用NDK
* [bibili ijkplayer](https://github.com/Bilibili/ijkplayer): 使用了通过其编译的libijkffmepg.so文件
* [how to write a video player](http://dranger.com/ffmpeg/ffmpeg.html)
* [FFmpeg Basics Multimedia handling with a fast audio and video encoder](http://ffmpeg.tv/)
* [ffmpeg-all中文翻译](https://www.gitbook.com/book/xdsnet/other-doc-cn-ffmpeg/details)
* [ffmpeg doc](https://www.ffmpeg.org/documentation.html)
* [FFMPEG processing](https://leanpub.com/ffmpeg)
* [雷霄骅 csdn blog](http://my.csdn.net/leixiaohua1020)
