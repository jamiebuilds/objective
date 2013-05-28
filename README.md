# Objective

**Collection of Useful CSS Objects and Helpers**

## About

### Purpose

Objective is a `collection` of classes that can help write more modular and maintainable styles by following [OOCSS](http://coding.smashingmagazine.com/2011/12/12/an-introduction-to-object-oriented-css-oocss/) rules.

Objective is not a framework in the typical sense. It's a project starter, a kickstart to building layouts. It's also not a grid, it works with any grid system you want (if you want).

### Usage

Use Objective like you would any set of styles. I'd recommend concatenating it with the rest of your styles.

## Helpers

Helpers are quick classes you can add to any element regardless of markup.

### Alignment

Align text left, right, center, or justified. By adding one of the classes `align--left`, `align--right`,  `align--center`, `align--justify`.

### Box Sizing

Change the default box model for the page to border-box by adding the `border_box_sizing` class to the body element. This will automatically adjust the `container` class.

### Filling

Fill an element to it's parent by adding the `fill` class.

### Floating

Float an element left or right by adding the classes `float--left` or `float--right` respectively.

### Clearing

Clear floats by adding the class `clear` to an element.

Contain floats by adding the class `clearfix` to the floated elements parent element.

### Hiding

Hide an element from both [screenreaders and browsers](http://h5bp.com/u) by adding the class `hidden`.

Hide an element only visually, but have it [available for screenreaders](http://h5bp.com/v) by adding the class `visuallyhidden`.

Extends the `visuallyhidden` class to allow the element to be [focusable when navigated to via the keyboard](http://h5bp.com/p) by adding the class `focusable`.

Hide an element visually and from screenreaders, but maintain layout by adding the class `invisible`.

Collapse an element by adding the `collapse` class.

## Objects `[WIP]`

Objects are groups of classes and/or classes that depend on markup.

### Aspect Ratio

### Clearfix

### Container

### Core

### Flag

### Image Replacement

### Media
