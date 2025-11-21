# flutter_texteditingcontroller_demo

A small Flutter demo that shows how to manage TextField text using TextEditingController.

## Overview

This repository demonstrates common patterns for:

- creating and disposing TextEditingController instances,
- programmatically reading and writing text,
- listening to controller changes,

## Video tutorial

- Video: [TextField Widget In Flutter - TextEditingController Guide #2](https://youtu.be/CXUew1hIXb8)
- Channel: [Manoj Kulkarni](https://www.youtube.com/@ManojKulkarni30)

## Documentation

- TextField widget (material): https://api.flutter.dev/flutter/material/TextField-class.html
- TextEditingController: https://api.flutter.dev/flutter/widgets/TextEditingController-class.html

## Quick tips

- Always dispose controllers in State.dispose(): controller.dispose()
- Use controller.text to read/write current value.
- Use controller.addListener(...) to react to text changes.
