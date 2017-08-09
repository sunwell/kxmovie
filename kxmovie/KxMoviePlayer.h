//
//  KxMoviePlayer.h
//  kxmovie
//
//  Created by iosdevlope on 2017/8/8.
//

#import <UIKit/UIKit.h>
@class KxMovieDecoder;

extern NSString * const KxMovieParameterMinBufferedDuration;    // Float
extern NSString * const KxMovieParameterMaxBufferedDuration;    // Float
extern NSString * const KxMovieParameterDisableDeinterlacing;   // BOOL


@interface KxMoviePlayer : UIView

@property (readonly) BOOL playing;

- (void) play;
- (void) pause;
+ (id) moviePlayerWithContentPath: (NSString *) path
                       parameters: (NSDictionary *) parameters;
@end
