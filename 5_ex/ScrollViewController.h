//
//  ScrollViewController.h
//  5_ex
//
//  Created by AcerHack on 08.04.18.
//  Copyright © 2018 AcerHack. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ScrollViewController : UIViewController <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *nameField;
@property (weak, nonatomic) IBOutlet UITextField *nickField;
@property (weak, nonatomic) IBOutlet UITextField *eMailField;
@property (weak, nonatomic) IBOutlet UITextField *phoneField;
@property (weak, nonatomic) IBOutlet UITextField *repasswordField;
@property (weak, nonatomic) IBOutlet UITextField *passwordField;

@end

