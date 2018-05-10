# Sample of a Centered CollectionView Flow Layout

This is a sample of a Centered CollectionView Flow Layout, that is in detail explaing in my blog post here.

The result of the layout looks like:

<img src="https://i.imgur.com/hZi0QEY.png" alt="CenteredCollectionViewFlowLayout" width=500 />

## Usage
Just initialize the `UICollectionViewCenterLayout` object and set it as the `collectionViewLayout` of your `UICollectionView`:

```swift
let layout = UICollectionViewCenterLayout()
layout.estimatedItemSize = CGSize(width: 140, height: 40)
collectionView.collectionViewLayout = layout
```
