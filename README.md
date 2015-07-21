# UIView-Move

### Purpose

It's too tidious to reassign unchanged frame values everytime you want to move your UIView, even though you only change a single parameter. UIView-Move supplies helper getter/setter methods for these situations.

### Usage


Import category to the class you want to use it in, or
```objc 
#import "UIView+Move.h"
```

```objc 
//Creating a black square to test on
UIView *view = [UIView new];
view.backgroundColor = [UIColor blackColor];
view.frame = CGRectMake(0, 0, 100, 100);
[someView addSubview:view];

//Moving our view around
view.x = 200;
view.y = 250;

//Resizing
view.width = 150;
view.height = 150;
```



You can position your view relative its parent's frame
```objc 
//Following lines will position our rectangle at the center of it's super
view.left = view.superview.width/2.0 - view.width/2.0;
view.top = view.superview.height/2.0 - view.height/2.0;

//This will snap the box to bottom right of superviews frame
view.right = 0;
view.bottom = 0;

//Animates the box to the top left
[UIView animateWithDuration:1 animations:^{
  view.top = 0;
  view.x = 0;
}];
```
