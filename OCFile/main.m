//
//  main.m
//  OCFile
//
//  Created by 刘清 on 15/6/18.
//  Copyright (c) 2015年 LiuQing. All rights reserved.
//

#import <Foundation/Foundation.h>

//定义了一个无参的宏   等效替代
#define PATH @"/Users/liuqing/Desktop/综合/2015/OCFile/1520"
#define NEWPATH @"/Users/liuqing/Desktop/综合/2015/OCFile/OCFile/1520"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        /*
        //命令行程序   iOS相关程序
        //命令行可存储电脑任意位置
        //iOS相关程序对应沙盒，可对沙盒里相应位置存储
        //NSFileManager
        //defaultManager 单例方法
        //获得一个NSFileManager对象  已开辟内存并初始化
        NSFileManager *fileManager = [NSFileManager defaultManager];
        //NSFileManager *fileManager = [[NSFileManager alloc] init];
        
        NSError *error = nil;
        //  1  创建相应文件夹
        //参数1  相应的文件夹路径
        //参数2  是否补齐中间路径
        //参数3  设置文件夹的属性
        //参数4  错误收集
        [fileManager createDirectoryAtPath:PATH withIntermediateDirectories:YES attributes:nil error:&error];
        //如果error存在  说明创建失败  打出原因
        if (error) {
            NSLog(@"%@", error);
        }else{
            NSLog(@"创建成功！");
        }
        
        //  2  查看文件夹的属性
        //NSDirectoryEnumerator *enumerator = [fileManager enumeratorAtPath:PATH];
        //NSLog(@"%@", enumerator.directoryAttributes);
        
        //     补充
        //NSDictionary *dict = [fileManager attributesOfItemAtPath:PATH error:nil];
        //NSLog(@"%@", dict);
        
        //  3  判断文件夹是否存在
        //BOOL b = [fileManager fileExistsAtPath:[NSString stringWithFormat:@"%@/lq", PATH]];
        //NSLog(@"%d", b);
        
        //  4  文件夹的删除
        //  参数1  文件夹路径  参数2  错误信息
        //[fileManager removeItemAtPath:PATH error:nil];
        
        //  5  文件夹移动
        //  参数1  原文件夹路径  参数2  目标文件夹路径  参数3  错误收集
        //NSError *error1 = nil;
        //[fileManager moveItemAtPath:PATH toPath:NEWPATH error:&error1];
        //if (error1) {
        //    NSLog(@"%@", error1);
        //}else{
        //    NSLog(@"移动文件夹成功！");
        //}
        
        //  6 文件夹复制
        //  参数1  原文件夹路径  参数2  目标文件夹路径  参数3  错误信息
        BOOL b1 = [fileManager copyItemAtPath:PATH toPath:NEWPATH error:nil];
        if (b1) {
            NSLog(@"复制文件夹成功！");
        }
         */
        
        //  文件操作相关  NSFileHandle
        //NSFileManager *fileManager = [NSFileManager defaultManager];
        //  1  创建文件
        //  参数1 文件路径  参数2  文件内容   参数3  文件属性
        //BOOL b = [fileManager createFileAtPath:[NSString stringWithFormat:@"%@/test.txt", PATH] contents:nil attributes:nil];
        
        //if (b) {
        //    NSLog(@"创建文件成功!");
        //}
        
        //  2  文件内容写入
        //获取NSFileHandle对象
        // 对文件可读可写  fileHandleForUpdatingAtPath:
        // 对文件可读     fileHandleForReadingAtPath:
        // 对文件可写     fileHandleForWritingAtPath:
        NSString *path = [NSString stringWithFormat:@"%@/test.txt", PATH];
        NSFileHandle *fileHandle = [NSFileHandle fileHandleForUpdatingAtPath:path];
        // NSDate  NSData
        //   2.1  fileHandle
        // NSData  二进制的数据类
        NSString *string = @"12345678";
        NSData *data = [string dataUsingEncoding:NSUTF8StringEncoding];
        //通过fileHandler写入文件
        [fileHandle seekToFileOffset:5];
        [fileHandle writeData:data];
        
        //   2.2  只接用字符串写入
        //NSString *string = @"abcdef";
        //  参数1  文件的路径  参数2  原子操作   参数2  编码格式   参数4  错误收集
        //BOOL b1 = [string writeToFile:path atomically:YES encoding:NSUTF8StringEncoding error:nil];
        //if (b1) {
        //    NSLog(@"写入内容成功");
        //}
        
        //  3  文件内容读取
        //readDataToEndOfFile  读取整个文件内容
        //[fileHandle seekToFileOffset:4];
        
        //NSData *data = [fileHandle readDataOfLength:1];
//        NSData *data = [fileHandle readDataToEndOfFile];
//        
//        //NSData-->NSString
//        NSString *string = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
//        NSLog(@"%@", string);
        
    }
    return 0;
}
