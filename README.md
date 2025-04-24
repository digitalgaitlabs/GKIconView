# GKIconView

# Overview
GKIconView is a customizable SwiftUI view for displaying SF Symbols icons with a dynamic, proportionally colored overlay. 
It’s ideal for visualizing segmented status data like progress, levels, or categories — useful in clinical, sports, automotive, or wellness dashboards.
Perfect for dashboards and status displays

<img width="625" alt="GKIconView" src="https://github.com/user-attachments/assets/6bf5a8f6-cec3-4706-bb08-b310b06dc11e" />

# Features
Layered color segments to indicate proportions
Full support for SF Symbols (e.g., figure.walk.diamond, speedometer, fuelpump)
Configurable scale and overlay fill percentages


# Usage
swift
Copy
Edit
GKIconView(
    percentage1: 0.4,
    percentage2: 0.3,
    scale: 0.3,
    iconName: "figure.walk.diamond",
    colour1: Color.blue.opacity(0.8),
    colour2: Color.teal.opacity(0.7),
    colour3: Color.cyan.opacity(0.6)
)

# Parameters

Parameter	Type	Description
percentage1	CGFloat	First overlay fill proportion (0–1)
percentage2	CGFloat	Second overlay fill (stacked above 1)
scale	CGFloat	Icon scale relative to base size (default iconSize = 375)
iconName	String	SF Symbol name
colour1	Color	Base fill color
colour2	Color	Middle fill color
colour3	Color	Top fill color

# Examples

GKIconView(
    percentage1: 0.3,
    percentage2: 0.4,
    scale: 0.3,
    iconName: "fuelpump",
    colour1: .green.opacity(0.8),
    colour2: .yellow.opacity(0.7),
    colour3: .red.opacity(0.6)
)

GKIconView(
    percentage1: 0.6,
    percentage2: 0.2,
    scale: 0.3,
    iconName: "speedometer",
    colour1: .blue.opacity(0.8),
    colour2: .teal.opacity(0.7),
    colour3: .gray.opacity(0.5)
)

# Installation
Copy GKIconView.swift into your SwiftUI project. No external dependencies required.



# License
MIT License – feel free to use, fork, and contribute.
