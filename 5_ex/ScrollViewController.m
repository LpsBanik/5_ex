//
//  ScrollViewController.m
//  5_ex
//
//  Created by AcerHack on 08.04.18.
//  Copyright © 2018 AcerHack. All rights reserved.
//

#import "ScrollViewController.h"

@interface ScrollViewController () <UIScrollViewDelegate, UIGestureRecognizerDelegate>

@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@end

@implementation ScrollViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
     UITapGestureRecognizer *recognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(singleTap:)];
    [self.view addGestureRecognizer:recognizer];
    
    self.scrollView.keyboardDismissMode = UIScrollViewKeyboardDismissModeInteractive;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)singleTap:(UITapGestureRecognizer*)sender {
    [[self view] endEditing:YES];
}

#pragma mark - UITextFieldDelegate

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    if ([textField isEqual:self.nameField]) {
        [self.nickField becomeFirstResponder];
    } else if ([textField isEqual:self.nickField]) {
        [self.eMailField becomeFirstResponder];
    } else if ([textField isEqual:self.eMailField]) {
        [self.phoneField becomeFirstResponder];
    } else {
        [textField resignFirstResponder];
    }
    
    if ([textField isEqual:self.passwordField]) {
        [self.repasswordField becomeFirstResponder];
    } else {
        [textField resignFirstResponder];
    }
    return YES;
}

- (void)textFieldDidBeginEditing:(UITextField *)textField {

        //Использовал специально 2 метода
        //Просто, хотел узнать, что правильнее в данном случае использовать?
     
        if ([textField isEqual:self.passwordField] || [textField isEqual:self.repasswordField]) {
        CGPoint scrollPoint = CGPointMake(0, 120);
        [self.scrollView setContentOffset:scrollPoint animated:YES];
    }
    
    if ([textField isEqual:self.nameField] || [textField isEqual:self.nickField] || [textField isEqual:self.eMailField] || [textField isEqual:self.phoneField]) {
        self.scrollView.contentInset = UIEdgeInsetsMake(0, 0, 220, 0);
    }
}

- (void)textFieldDidEndEditing:(UITextField *)textField {
    
    if ([textField isEqual:self.passwordField] || [textField isEqual:self.repasswordField]) {
        [self.scrollView setContentOffset:CGPointZero animated:YES];
        
    } else {
        [self.scrollView setContentInset:UIEdgeInsetsZero];
    }
}

@end
