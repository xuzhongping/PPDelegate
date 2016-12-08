//
//  ViewController.m
//  测试转发器
//
//  Created by xuzhongping on 2016/12/7.
//  Copyright © 2016年 xuzhongping. All rights reserved.
//

#import "ViewController.h"
#import "PPDelegate.h"
#import "Person.h"
#import "Student.h"

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property (nonatomic,strong)PPDelegate *ppd;

@property (nonatomic,strong)Person *p;
@property (nonatomic,strong)Student *s;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Person *p = [Person new];
    Student *s = [Student new];
    
    self.p = p;
    self.s = s;
    
    self.ppd = [PPDelegate delegate];
    
   
    [self.ppd addDelegates:@[p,s] forTarget:self.tableView];
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 100;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:nil];
    cell.textLabel.text = @"嘎嘎";
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"v 选中");
}

- (void)dealloc{
    
}
@end
