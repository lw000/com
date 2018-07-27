#include "log4z_android_ios_ext.h"
#include "log4z.h"

#if defined(ANDROID)
#include <jni.h>
#include <android/log.h>

#define  LOG4Z_TAG    "log4z"
#define  LOG4ZD_PRINTF(f, ...)  __android_log_print(ANDROID_LOG_DEBUG,LOG4Z_TAG,f, ##__VA_ARGS__)
#define  LOG4ZI_PRINTF(f, ...)  __android_log_print(ANDROID_LOG_INFO,LOG4Z_TAG,f, ##__VA_ARGS__)
#define  LOG4ZW_PRINTF(f, ...)  __android_log_print(ANDROID_LOG_WARN,LOG4Z_TAG,f, ##__VA_ARGS__)
#define  LOG4ZE_PRINTF(f, ...)  __android_log_print(ANDROID_LOG_ERROR,LOG4Z_TAG,f, ##__VA_ARGS__)
#define  LOG4ZF_PRINTF(f, ...)  __android_log_print(ANDROID_LOG_FATAL,LOG4Z_TAG,f, ##__VA_ARGS__)

#endif	//ANDROID

void hook_log_func(int level, const char* log)
{
#if defined(ANDROID)
	switch (level)
	{
	case LOG_LEVEL_DEBUG: LOG4ZD_PRINTF("%s", log); break;
	case LOG_LEVEL_INFO: LOG4ZI_PRINTF("%s", log); break;
	case LOG_LEVEL_WARN: LOG4ZW_PRINTF("%s", log); break;
	case LOG_LEVEL_ERROR: LOG4ZE_PRINTF("%s", log); break;
	case LOG_LEVEL_FATAL: LOG4ZF_PRINTF("%s", log); break;
	default:
		break;
	}
#endif	//ANDROID
}
