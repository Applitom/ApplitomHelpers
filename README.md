# ApplitomHelpers

## About
ApplitomHelpers is a Swift library that provides helpful extensions and extra helpers to your project.<br/>
I started it for my personal use and decided to publish it as an open-source. I will add more functionality as time passes.

## Content
- [Extentions](#Extentions)
    - [UIImage+Utils](#UIImage+Utils)

## Extentions

#### UIImage+Utils
##### Create UIImage from the given UIView.
```
convenience init(view: UIView)
```
with this convenience init you can init new UIImagw with an UIView instance

##### Resize an image
```
func resize(newSize:CGSize) -> UIImage
```
##### Add insets to an image
```
func addInsets(insets: UIEdgeInsets) -> UIImage
```
##### Add alpha to an image
```
func imageWithAlpha(_ alphaFactor: CGFloat) -> UIImage
```
