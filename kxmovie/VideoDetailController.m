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
    
    self.player = [[KxMoviePlayer alloc] initWithFrame:CGRectMake(20, 100, ScreenW-40, 300)];
    [self.player moviePlayerWithContentPath:self.path parameters:self.params];
    [self.view addSubview:self.player];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    [self.player m_viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    [self.player m_viewWillDisappear:animated];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
    [self.player m_didReceiveMemoryWarning];
}


#pragma mark -
@end
