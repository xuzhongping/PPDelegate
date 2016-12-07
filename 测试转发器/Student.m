//
//  Student.m
//  测试转发器
//
//  Created by xuzhongping on 2016/12/7.
//  Copyright © 2016年 xuzhongping. All rights reserved.
//

#import "Student.h"

@implementation Student

- (void)scrollViewDidScroll:(UIScrollView *)scrollView{
    NSLog(@"Student");
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"Student 选中了");
}



@end
