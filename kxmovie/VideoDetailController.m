//
//  VideoDetailController.m
//  kxmovie
//
//  Created by iosdevlope on 2017/8/9.
//

#define ScreenW [UIScreen mainScreen].bounds.size.width
#define ScreenH [UIScreen mainScreen].bounds.size.height

#import "VideoDetailController.h"
#import "KxMoviePlayer.h"

@interface VideoDetailController ()
@property (nonatomic, strong) KxMoviePlayer *player;
@end

@implementation VideoDetailController
#pragma mark - life cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor greenColor];
    
    self.player = [KxMoviePlayer moviePlayerWithContentPath:self.path parameters:self.params];
    self.player.frame = CGRectMake(20, 100, ScreenW-40, 300);
    [self.view addSubview:self.player];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark -
@end
