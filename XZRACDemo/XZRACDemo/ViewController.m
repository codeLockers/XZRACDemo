//
//  ViewController.m
//  XZRACDemo
//
//  Created by 徐章 on 16/6/7.
//  Copyright © 2016年 徐章. All rights reserved.
//

#import "ViewController.h"
#import <ReactiveCocoa/ReactiveCocoa.h>


@interface ViewController ()
@property (nonatomic, strong) UITextField *textField;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //*******TextField************//
    
//    self.textField = [[UITextField alloc] initWithFrame:CGRectMake(0, 0, 200, 40)];
//    self.textField.backgroundColor = [UIColor greenColor];
//    self.textField.center = self.view.center;
//    [self.view addSubview:self.textField];
    
//    [[self.textField rac_signalForControlEvents:UIControlEventEditingChanged] subscribeNext:^(id x) {
//       
//        NSLog(@"%@",x);
//        
//    }];
//    
    
//    [[self.textField rac_textSignal] subscribeNext:^(NSString *x) {
//       
//        NSLog(@"x= %@",x);
//        
//    }];
    
    //*******Gesture************//
    
//    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] init];
//    [[tapGesture rac_gestureSignal] subscribeNext:^(id x) {
//       
//        NSLog(@"%@",x);
//        
//    }];
//    [self.view addGestureRecognizer:tapGesture];
    
    
    //*******NSNotification************//

    
//    [[[NSNotificationCenter defaultCenter] rac_addObserverForName:UIApplicationDidBecomeActiveNotification object:nil] subscribeNext:^(id x) {
//       
//        NSLog(@"%@",x);
//        
//    }];
    
//    RACSignal *singal = [[NSNotificationCenter defaultCenter] rac_addObserverForName:UIApplicationDidBecomeActiveNotification object:nil];
//    RACDisposable *disposable = [singal subscribeNext:^(id x) {
//       
//        NSLog(@"%@",x);
//    }];
//    
//    [disposable dispose];
    
    //*******Timer************//
    
//    [[RACScheduler mainThreadScheduler] afterDelay:2 schedule:^{
//       
//        NSLog(@"Time");
//        
//    }];
    
//    [[RACSignal interval:1 onScheduler:[RACScheduler mainThreadScheduler]] subscribeNext:^(id x) {
//       
//        NSLog(@"%@",x);
//        
//    }];
    
    //*******Delegate************//
    
//    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"XZRACDemo" message:@"message" delegate:self cancelButtonTitle:@"cancel" otherButtonTitles:@"sure", nil];
//    [[self rac_signalForSelector:@selector(alertView:clickedButtonAtIndex:) fromProtocol:@protocol(UIAlertViewDelegate)] subscribeNext:^(RACTuple *tuple) {
//        
//        NSLog(@"%@",tuple);
//        
//    }];
    
//    [[alertView rac_buttonClickedSignal] subscribeNext:^(id x) {
//       
//        NSLog(@"%@",x);
//        
//    }];
//    
//    [alertView show];
    
    
    //*******KVO************//
    
//    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:[UIScreen mainScreen].bounds];
//    scrollView.contentSize = CGSizeMake([UIScreen mainScreen].bounds.size.width, 1000);
//    [self.view addSubview:scrollView];
//    
//    [RACObserve(scrollView, contentOffset) subscribeNext:^(id x) {
//       
//        NSLog(@"%@",x);
//        
//    }];
    
    
    //************* 自定义信号 ***********//
//    RACSignal *singal = [RACSignal createSignal:^RACDisposable *(id<RACSubscriber> subscriber) {
//       
//        [subscriber sendNext:@"response"];
//        [subscriber sendNext:@"response2"];
    
//        [subscriber sendError:[NSError errorWithDomain:@"domain" code:111 userInfo:nil]];
//        [subscriber sendCompleted];
//        
//        
//        
//        
//        return [RACDisposable disposableWithBlock:^{
//            
//            //cancel resquest取消订阅
//            
//        }];
//    }];
//    
//    RACDisposable *disposable = [singal subscribeNext:^(id x) {
//        
//        NSLog(@"%@",x);
//        
//    } error:^(NSError *error) {
//        
//        NSLog(@"error");
//        
//    } completed:^{
//        
//        NSLog(@"completed");
//    }];
// 
//    [disposable dispose];
    
        //************* Map ***********//
//    self.textField = [[UITextField alloc] initWithFrame:CGRectMake(0, 0, 200, 40)];
//    self.textField.backgroundColor = [UIColor greenColor];
//    self.textField.center = self.view.center;
//    [self.view addSubview:self.textField];
//
//    [[self.textField.rac_textSignal map:^id(NSString *value) {
//       
//        return @(value.length);
//        
//    }] subscribeNext:^(id x) {
//        
//        NSLog(@"%@",x);
//        
//    }];
    
    //************* Filtter ***********//
//        self.textField = [[UITextField alloc] initWithFrame:CGRectMake(0, 0, 200, 40)];
//        self.textField.backgroundColor = [UIColor greenColor];
//        self.textField.center = self.view.center;
//        [self.view addSubview:self.textField];
//    
//        [[[self.textField.rac_textSignal map:^id(NSString *value) {
//    
//            return @(value.length);
//    
//        }] filter:^BOOL(NSNumber *value) {
//          
//            
//            return value.integerValue > 3;
//            
//        }] subscribeNext:^(id x) {
//    
//            NSLog(@"%@",x);
//            
//        }];

//    //************* Delay ***********//
//    RACSignal *singal = [[RACSignal createSignal:^RACDisposable *(id<RACSubscriber> subscriber) {
//
//        [subscriber sendNext:@"response"];
//        [subscriber sendCompleted];
//        return nil;
//    }] delay:2];
//    
//    [singal subscribeNext:^(id x) {
//      
//        NSLog(@"%@",x);
//    }];

    //************* StartWith ***********//
//    RACSignal *singal = [[RACSignal createSignal:^RACDisposable *(id<RACSubscriber> subscriber) {
//        
//        [subscriber sendNext:@"response"];
//        [subscriber sendCompleted];
//        return nil;
//    }] startWith:@"hah"];
//    
//    [singal subscribeNext:^(id x) {
//        
//        NSLog(@"%@",x);
//    }];
    
    //************* TimeOut ***********//
//    [[[RACSignal createSignal:^RACDisposable *(id<RACSubscriber> subscriber) {
//        
//        [[RACScheduler mainThreadScheduler] afterDelay:3 schedule:^{
//           
//            [subscriber sendNext:@"next"];
//            [subscriber sendCompleted];
//            
//        }];
//        return nil;
//    }] timeout:4 onScheduler:[RACScheduler mainThreadScheduler]] subscribeNext:^(id x) {
//        
//        NSLog(@"%@",x);
//        
//    } error:^(NSError *error) {
//        
//        NSLog(@"%@",error);
//        
//    } completed:^{
//        NSLog(@"Completed");
//    }];

    //************* Take ***********//
//    [[[RACSignal createSignal:^RACDisposable *(id<RACSubscriber> subscriber) {
//
//        [subscriber sendNext:@"next1"];
//        [subscriber sendNext:@"next2"];
//        [subscriber sendNext:@"next3"];
//        [subscriber sendNext:@"next4"];
//        [subscriber sendCompleted];
//
//        return nil;
//    }] take:2 ]subscribeNext:^(id x) {
//      
//        NSLog(@"%@",x);
//    }];
    
    //************* Skip ***********//
//    [[[RACSignal createSignal:^RACDisposable *(id<RACSubscriber> subscriber) {
//        
//        [subscriber sendNext:@"next1"];
//        [subscriber sendNext:@"next2"];
//        [subscriber sendNext:@"next3"];
//        [subscriber sendNext:@"next4"];
//        [subscriber sendCompleted];
//        
//        return nil;
//    }] skip:2 ]subscribeNext:^(id x) {
//        
//        NSLog(@"%@",x);
//    }];
    
    //************* takeLast ***********//
//    [[[RACSignal createSignal:^RACDisposable *(id<RACSubscriber> subscriber) {
//        
//        [subscriber sendNext:@"next1"];
//        [subscriber sendNext:@"next2"];
//        [subscriber sendNext:@"next3"];
//        [subscriber sendNext:@"next4"];
//        [subscriber sendCompleted];
//        
//        return nil;
//    }] takeLast:3 ]subscribeNext:^(id x) {
//        
//        NSLog(@"%@",x);
//    }];
    
    
    //************* takeUntil ***********//
    //************* takeWhileBlock ***********//
    //************* skipWhileBlock ***********//
    //************* takeUntilBlock ***********//
    
//    self.textField = [[UITextField alloc] initWithFrame:CGRectMake(0, 0, 200, 40)];
//    self.textField.backgroundColor = [UIColor greenColor];
//    self.textField.center = self.view.center;
//    [self.view addSubview:self.textField];
//
//    [[[[[[self.textField.rac_textSignal throttle:0.3] distinctUntilChanged] ignore:@""] map:^id(id value) {
//        
//        return [RACSignal createSignal:^RACDisposable *(id<RACSubscriber> subscriber) {
//            
//            //request
//            [subscriber sendNext:@"next"];
//            [subscriber sendCompleted];
//            
//            return [RACDisposable disposableWithBlock:^{
//                
//            }];
//        }];
//        
//    }] switchToLatest] subscribeNext:^(NSString *x) {
//
//        NSLog(@"x= %@",x);
//        
//    }];
    
    //************* 搜索优化 ***********//
//    self.textField = [[UITextField alloc] initWithFrame:CGRectMake(0, 0, 200, 40)];
//    self.textField.backgroundColor = [UIColor greenColor];
//    self.textField.center = self.view.center;
//    [self.view addSubview:self.textField];
//    
//    [[self.textField.rac_textSignal flattenMap:^RACStream *(id value) {
//       
//        return [RACSignal createSignal:^RACDisposable *(id<RACSubscriber> subscriber) {
//           
//            [subscriber sendNext:@"next"];
//            [subscriber sendCompleted];
//            return nil;
//        }];
//        
//    }] subscribeNext:^(id x) {
//        
//        NSLog(@"%@",x);
//        
//    }];
    
    //************* repeat ***********//
//    [[[RACSignal createSignal:^RACDisposable *(id<RACSubscriber> subscriber) {
//
//        [subscriber sendNext:@"next"];
//        [subscriber sendCompleted];
//        return nil;
//    }] repeat] subscribeNext:^(id x) {
//      
//        NSLog(@"%@",x);
//    }];

    //************* 多信号 ***********//
//    RACSignal *singalA = [RACSignal createSignal:^RACDisposable *(id<RACSubscriber> subscriber) {
//
//        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)) ,dispatch_get_main_queue(),^{
//        
//            [subscriber sendNext:@"a"];
//            [subscriber sendCompleted];
//        });
//        
//        return nil;
//    }];
//    
//    RACSignal *singalB = [RACSignal createSignal:^RACDisposable *(id<RACSubscriber> subscriber) {
//        
//        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)) ,dispatch_get_main_queue(),^{
//            
//            [subscriber sendNext:@"b"];
//            [subscriber sendCompleted];
//        });
//        
//        return nil;
//    }];
//    
//    [[singalA merge:singalB] subscribeNext:^(id x) {
//       
//        NSLog(@"%@",x);
//    }];
//    
//    [[singalA concat:singalB] subscribeNext:^(id x) {
//        
//        NSLog(@"%@",x);
//    }];
//    
//    [[singalA zipWith:singalB] subscribeNext:^(RACTuple *x) {
//        
//        NSLog(@"%@",x);
//    }];
//    
//    [[RACSignal combineLatest:@[singalA,singalB]] subscribeNext:^(id x) {
//        
//    }];
    
//    UIButton *button = [UIButton new];
//    
//    RAC(button,backgroundColor) = [RACObserve(button, selected) map:^id(NSNumber *value) {
//        
//        return [value boolValue]? [UIColor redColor] : [UIColor greenColor];
//    }];
    
//    UILabel *label = [UILabel new];
//    
//    RAC(label,text) = [[RACSignal interval:1 onScheduler:[RACScheduler mainThreadScheduler]] map:^id(NSDate *value) {
//        
//        return value.description;
//    }];

    
    RACSignal *singal = [[RACSignal createSignal:^RACDisposable *(id<RACSubscriber> subscriber) {
       
        static int i = 0;
        i++;
        [subscriber sendNext:@(i)];
        [subscriber sendCompleted];
        
        return nil;
    }] replay];

    [singal subscribeNext:^(id x) {
        
    }];
    
    [singal subscribeNext:^(id x) {
        
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)button_Pressed:(id)sender {
    
    self.textField.text = @"fdf";
}

@end
