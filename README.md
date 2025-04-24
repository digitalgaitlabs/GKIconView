# GKIconView

## Overview

**GKIconView** is a customizable SwiftUI view for displaying SF Symbols icons with a dynamic, proportionally colored overlay.  
It’s ideal for visualizing segmented status data like progress, levels, or categories — useful in clinical, sports, automotive, or wellness dashboards.

Perfect for dashboards and status displays.

![GKIconView](https://github.com/user-attachments/assets/6bf5a8f6-cec3-4706-bb08-b310b06dc11e)

---

## Features

- Layered color segments to indicate proportions
- Full support for SF Symbols (e.g., `figure.walk.diamond`, `speedometer`, `fuelpump`)
- Configurable scale and overlay fill percentages

---

## Usage

```swift
GKIconView(
    percentage1: 0.4,
    percentage2: 0.3,
    scale: 0.3,
    iconName: "figure.walk.diamond",
    colour1: Color.blue.opacity(0.8),
    colour2: Color.teal.opacity(0.7),
    colour3: Color.cyan.opacity(0.6)
)
