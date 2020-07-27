#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "HelloMethod.h"
#import "NewMMM.h"

FOUNDATION_EXPORT double MyFirstCodeVersionNumber;
FOUNDATION_EXPORT const unsigned char MyFirstCodeVersionString[];

