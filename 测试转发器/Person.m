//
//  Person.m
//  测试转发器
//
//  Created by xuzhongping on 2016/12/7.
//  Copyright © 2016年 xuzhongping. All rights reserved.
//

#import "Person.h"

@implementation Person
- (void)scrollViewDidScroll:(UIScrollView *)scrollView{
    NSLog(@"Person");
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"Person 选中了");
}

@end
