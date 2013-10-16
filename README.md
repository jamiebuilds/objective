# Objective [![Build Status](https://travis-ci.org/tctcl/objective.png?branch=master)](https://travis-ci.org/tctcl/objective) [![Dependency Status](https://david-dm.org/tctcl/objective.png)](https://david-dm.org/tctcl/objective) [![devDependency Status](https://david-dm.org/tctcl/objective/dev-status.png)](https://david-dm.org/tctcl/objective#info=devDependencies)

**Collection of Useful CSS Objects and Helpers**

<a href="dist/objective.css" class="button button--primary">Objective.css</a>
<a href="http://github.com/thejameskyle/objective" class="button">Objective on GitHub</a>

## About

### Purpose

Objective is a collection of classes that can help write more modular and maintainable styles by following [OOCSS](http://coding.smashingmagazine.com/2011/12/12/an-introduction-to-object-oriented-css-oocss/) rules.

Objective is not a framework in the typical sense. It's a project starter, a kick-start to building layouts. It's also not a grid, it works with any grid system you want (if you want).

### Usage

Use Objective like you would any set of styles. I'd recommend concatenating it with the rest of your styles.

## Helpers

Helpers are quick classes you can add to any element regardless of markup.

### Alignment

**`.align--left`** Aligns text left.

**`.align--right`** Aligns text right.

**`.align--center`** Centers text.

**`.align--justify`** Justifies Text.

### Filling

**`.fill`** Fills an element horizontally to its parent.

### Floating

**`.float--left`** Floats an element left.

**`.float--right`** Floats an element right.

### Clearing

**`.clear`** Clears all floats.

Also: [Clearfix](#clearfix)

### Hiding

**`.collapse`** Collapse an element.

**`.hidden`** Hide an element from both [screen-readers and browsers](http://h5bp.com/u).

**`.invisible`** Hide an element visually and from screen-readers, but maintain layout.

**`.visuallyhidden`** Hide an element only visually, but have it [available for screen-readers](http://h5bp.com/v).

**`.focusable`** Extends the `.visuallyhidden` helper to allow the element to be [focusable when navigated to via the keyboard](http://h5bp.com/p).

### Image Replacement

**`.img`** Hides text. Use with additional styling to add a height, width, and background. Must set height and width in order to hide text properly.

## Objects

Objects are groups of classes and/or classes that depend on markup.

### Aspect Ratio

by [Thierry Koblentz (A List Apart)](http://alistapart.com/article/creating-intrinsic-ratios-for-video)

**`.aspect`** The base class that sets the ratio.

**`.aspect-content`** An inner class that helps position the target.

**`.aspect-target`** Sets the target to be positioned (ie. iframe, video).

**`.aspect--{{ratio}}`** Modifies the base class (`.aspect`) to have a different ratio. Included `{{ratio}}`s are `1x1`, `square`, `5x4`, `4x3`, `standard`, `3x2`, `8x5`, `16x10`, `5x3`, `16x9`, `hd`, `17x9`.


```
<div class="aspect aspect--hd">
  <div class="aspect-content">
    <video class="aspect-target">...</video>
  </div>
</div>
```

### Clearfix

by [Nicolas Gallagher](http://nicolasgallagher.com/micro-clearfix-hack/)

**`.clearfix`** Add the micro-clearfix hack to self-contain floats using pseudo elements.

```
<div class="clearfix">
  <div class="float--left">...</div>
  <div class="float--left">...</div>
  <div class="float--left">...</div>
</div>
```

### Core

by [James Kyle](https://twitter.com/thejameskyle)

**`.core`** Base class that sets the vertical alignment of the content. Defaults to centered.

**`.core-content`** An inner class that positions the content.

**`.core--[top/bottom]`** Modifies the vertical alignment on the base class to either top or bottom.

```
<div class="core core--bottom">
  <div class="core-content">...</div>
</div>
```

### Flag

by [Harry Roberts (CSS Wizardry)](http://csswizardry.com/2013/05/the-flag-object/)

**`.flag`** Base class that positions and vertically aligns the target and content. Defaults to centered.

**`.flag-target`** A target class that positions the media correctly.

**`.flag-content`** An inner class that positions the content correctly.

**`.flag-[top/bottom]`** Modifier classes that sets the vertical alignment on the base class to either top or bottom.

```
<div class="flag flag--bottom">
  <div class="flag-target">
    <img src="image.png">
  </div>
  <div class="flag-content">...</div>
</div>
```

### Media

by [Nicole Sullivan](http://www.stubbornella.org/content/2010/06/25/the-media-object-saves-hundreds-of-lines-of-code/)

**`.media`** Base class that helps position (includes clearfix).

**`.media-content`**

> This works with the `.float--left` and `.float--right` classes to position the media to either side.

```
<div class="media">
  <img class="float--left" src="image.png">
  <div class="media-content">...</div>
</div>
```

---

## Project

### Contribute

[Github Repo](https://github.com/thejameskyle/objective/) · [Issues](https://github.com/thejameskyle/objective/issues) · [Pull Requests](https://github.com/thejameskyle/objective/pulls)

You may contribute to this library by submitting either an [issue report](https://github.com/thejameskyle/objective/issues) for a bug/request or a [pull request](https://github.com/thejameskyle/objective/pulls) for a code contribution.

### License

This project is provided under the terms of the [MIT License](LICENSE.md).

---

Authored by **James Kyle** · [Github](http://github.com/thejameskyle) · [Twitter](http://twitter.com/thejameskyle) · [CodePen](http://codepen.io/thejameskyle)

[Built Equal](www.hrc.org/donate) · [Made in Boston](http://bostonbuilt.org/)
