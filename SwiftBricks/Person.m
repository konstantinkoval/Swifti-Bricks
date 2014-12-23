//
//  Person.m
//  SwiftiBricks
//
//  Created by Konstantin Koval on 04/08/14.
//  Copyright (c) 2014 Konstantin Koval. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person  : NSObject {

  NSInteger age;
  NSString *name;
  NSDate *birthDate;
  
}

- (instancetype)initWith:(NSInteger)age name:(NSString *)name;
- (void)hello;

@end

@implementation Person

- (instancetype)initWith:(NSInteger)anAge name:(NSString *)aName {
  self = [super init];
  if (self) {
    age = anAge;
    name = aName;
    birthDate = [NSDate date];
  }
  return self;
}

- (void)hello {
  NSLog(@"%@",[NSString stringWithFormat:@"Hello %@", name]);
}

@end
  
  
//    self.age = age
//    self.name = name
//    birthDate = NSDate.date()
//  }
//  
//  func hello() {
//    println("Hello \(name)")
//  }
//  }
//  
//  let me = Person(age: 26, name: "Konstantin")
//  me.hello()
