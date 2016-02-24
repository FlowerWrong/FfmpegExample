#include "com_liveneeq_ffmpegexample_MainActivity.h"
#include "libavcodec/avcodec.h"

JNIEXPORT jstring JNICALL Java_com_liveneeq_ffmpegexample_MainActivity_getffmpegFromJNI
        (JNIEnv *env, jobject thiz) {
    char info[10000] = { 0 };
    sprintf(info, "%s\n", avcodec_configuration());
    return (*env)->NewStringUTF(env, info);
}