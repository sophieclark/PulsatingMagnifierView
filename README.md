# PulsatingingMagnifierView
A view which magnifies the view behind and pulsates.

![](appgif.gif)

## Installation
To install via CocoaPods create podfile with the following lines:

```
target 'MyApp' do
  pod 'PulsatingMagnifierView', '~> 0.1'
end
```

Alternively clone the project and add the PulsatingMagnifierView.swift into your project.

## Using the magnifier view
To use the view in your view or view controller instantiate a PulsatingMagnifierView

```swift
var pulsatingMagnifierView: PulsatingMagnifierView!

pulsatingMagnifierView = PulsatingMagnifierView(frame: CGRect(x: view.frame.size.width / 2 - 50, 
                                                              y: view.frame.size.height / 2 - 100,
                                                              width: 100, height: 100), 
                                                              viewToMagnify: view, 
                                                              repeatCount: .infinity, 
                                                              startValue: 1, 
                                                              endValue: 2, 
                                                              duration: 2, 
                                                              scale: 1.5)

```

Some of the properties can be edited after initialisation. These are size, outline colour, and outline width.

```swift
pulsatingMagnifierView.size = 150
pulsatingMagnifierView.outlineColor = .red
pulsatingMagnifierView.outlineWidth = 3
```

