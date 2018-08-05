# NativeUI

NativeUI widget wrappers for Android and iOS.

**This package is under development, some help is always welcome.**

## Getting Started

### Import the native_ui package
To use the native_ui package, follow the [package installation instructions](https://pub.dartlang.org/packages/native_ui#-installing-tab-).

### Examples

#### Platform Native Button
Renders an iOS style button when the TargetPlatform is iOS and an Android style button when the TargetPlatform is Android. 
```dart
Button(
    onPressed: _login(context),
    padding: const EdgeInsets.symmetric(vertical: 8.0),
    width: 86.0,
    child: Text(
      'Login',
      style: TextStyle(
          color: Colors.white, fontWeight: FontWeight.bold),
    ),
    color: Colors.blue,
    ),
```

#### ConditionalBuilder
Render a Widget based on a boolean expression.
```dart
ConditionalBuilder(
    condition: _isLogging,
    trueWidget: Text(
        'Logging...',
        style: Theme.of(context).textTheme.title,
    ),
    falseWidget: FlatButton(
        onPressed: () => {},
        child: Text(
          'Login',
          style: TextStyle(
              color: Theme.of(context).primaryColorDark,
              fontWeight: FontWeight.bold),
        ),
    ),
),
```

### PlatformSwitcher
Unique widget for switch widgets between platforms.
```dart
PlatformSwitcher(
  iOSChild: iOSButton(
    child: child,
    onPressed: onPressed,
    color: color,
    padding: padding,
    borderRadius:
        borderRadius,
    height: height,
    width: width,
  ),
  androidChild: MaterialButton(
    key: key,
    onPressed: onPressed,
    child: child,
    color: color,
    padding: padding,
    minWidth: width,
    height: height,
  ),
);
```

## Contribution

Please contribute sending [feedback or reporting a bug](https://github.com/carlosjs23/nativeui/issues/new), or sending [a pull request](https://github.com/carlosjs23/nativeui/pulls). Thank you!




