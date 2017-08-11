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
- (void) moviePlayerWithContentPath: (NSString *) path
                       parameters: (NSDictionary *) parameters;

- (void) m_viewDidAppear:(BOOL)animated;
- (void) m_viewWillDisappear:(BOOL)animated;
- (void)m_didReceiveMemoryWarning;

@end
