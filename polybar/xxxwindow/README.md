<p align="center">
  <img src="/assets/banner.png">
</p>

<p align="center">
<i>- A custom module for the Polybar -</i>
</p>

## Table of Contents

* [Introduction](#introduction)
* [Getting started](#getting-started)
  * [Installation](#installation)
  * [Configuration](#configuration)
  * [Customization](#customization)

## Introduction

xxxwindow allows customizing the name of the applications shown in the _Polybar_, it's a custom module, very similar to the internal _xwindow_ module.

Instead of getting:

<p align="center">
  <img src="/assets/xwindowModule.png">
</p>

It is possible to reduce the name to a much simpler one:

<p align="center">                              
    <img src="/assets/xxxwindowModule.png">
</p>

Or even personalize it:

<p align="center">                              
    <img src="/assets/xxxwindowModuleCustom.png">              
</p>

## Getting started

### Installation

To add the xxxwindow module to the _Polybar_, simply add the following code to the configuration file of the _Polybar_.

```
[module/xxxwindow]
type = custom/script
interval = 0
exec = ~/the/location/where/you/save/the/xxxwindow.sh/file 
```

In the **exec** section, it is necessary to indicate the location of the [xxxwindow.sh](https://github.com/MateoNitro550/xxxwindowPolybarModule/blob/main/xxxwindow.sh) file.

### Configuration

To avoid the following error:

<p align="center">
    <img src="/assets/desktopError.png"
</p>

It is necessary to determine the value of **WM_DESKTOP**. 

To do this, we can run the following command:

```
sleep 3; xdotool getwindowfocus
```

Immediately after executing the command, we should move to an empty desktop.

The value we just got, we should replace it here:

<p align="center">
    <img src="/assets/WM_DESKTOP.png"
</p>

### Customization

#### WM_CLASS

If we want to change the name of `all the windows belonging to the same process`, we must use **WM_CLASS**.

For example, suppose I want to summarize the name of the different Ghidra windows, to Ghidra.

Instead of having different names, depending on which instance of Ghidra I am in:

<p align="center">
    <img src="/assets/ghidraFirst.png"
</p>

<p align="center">
    <img src="/assets/ghidraSecond.png"
</p>

I can call them all the same, Ghidra.

<p align="center">
    <img src="/assets/ghidraThird.png"
</p>

To do this, we can run the following command:
  
```
xprop WM_CLASS
```

Then, we will have to click on the program whose name we want to change. 

The name we just got, we should replace it here:

<p align="center">
    <img src="/assets/WM_CLASSfirst.png"
</p>

Finally, we must enter the custom name we want for that application:

<p align="center">
    <img src="/assets/WM_CLASSsecond.png"
</p>

#### WM_NAME

Unlike WM_CLASS, with **WM_NAME** we can change the name of a `certain window`, of a certain process.

For example, suppose I want to change the name of a certain Ghidra window, but not all of them.

To do this, we can run the following command:

```
xprop WM_NAME
```

Then, we will have to click on the program whose name we want to change.

The name we just got, we should replace it here:

<p align="center">
    <img src="/assets/WM_NAMEfirst.png"
</p>

Finally, we must enter the custom name we want for that application:

<p align="center">
    <img src="/assets/WM_NAMEsecond.png"
</p>

#### Colors

Additionally, we can change the text color of the process name displayed in the Polybar.

<p align="center">
    <img src="/assets/colorsFirst.png"
</p>

To do this we must modify the following value in each of the rules we have created:

<p align="center">
    <img src="/assets/colorsSecond.png"
</p>

The color that we introduce, must be represented in hexadecimal, otherwise, it will not work.
