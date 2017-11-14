//
//  TableViewController.m
//  dd_homework_2
//
//  Created by Влад Купряков on 19.10.17.
//  Copyright © 2017 Влад Купряков. All rights reserved.
//

#import "TableViewController.h"
#import "ViewController.h"
@interface TableViewController ()
@end
//импорты в файле реализации
@implementation TableViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.allowsMultipleSelectionDuringEditing = NO;
    contr = [[ViewController alloc]init];
    array = [[NSMutableArray alloc]initWithArray:[contr returnArr]];
}
NSMutableArray *arrForReturn;
- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    cell.textLabel.attributedText = array[indexPath.row];
    return  cell;
}

- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section
{
    return array.count;
}

-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
   //если нажали на кнопку удалить ячейку
    if (editingStyle == 1)
    {
        //удаляем элемент массива, который содержит значение удаляемой строки, ну и строку удаляем
        [tableView beginUpdates];
        [array removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
        [tableView endUpdates];
        //передаем номер строки, которую мы удалили в UITableView
        [contr takeIdx:indexPath.row];
    }
}

-(void)dealloc{
    contr = nil;
    array = nil;
    [contr autorelease];
    [array autorelease];
    
    [super dealloc];
}
@end
