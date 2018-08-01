## Module Data.ST.Matrix

Binding to mjs library

#### `STMat`

```purescript
newtype STMat r c h a
  = STMat (STArray h a)
```

#### `copyImpl`

```purescript
copyImpl :: forall a b h. a -> Effect b
```

#### `freeze`

```purescript
freeze :: forall a h. STArray h a -> Effect (Array a)
```

Create an immutable copy of a mutable array.

#### `thaw`

```purescript
thaw :: forall a h. Array a -> Effect (STArray h a)
```

Create a mutable copy of an immutable array.

#### `unsafeFreeze`

```purescript
unsafeFreeze :: forall a h. STArray h a -> Array a
```

Freeze an ST array. Do not mutate the STArray afterwards!

#### `unsafeThaw`

```purescript
unsafeThaw :: forall a h. Array a -> STArray h a
```

#### `cloneSTMat`

```purescript
cloneSTMat :: forall r c h a. (STMat r c h a) -> Effect (STMat r c h a)
```

#### `fromSTMat`

```purescript
fromSTMat :: forall r c h a. Sized r => Sized c => (STMat r c h a) -> Effect (Mat r c a)
```

#### `toSTMat`

```purescript
toSTMat :: forall r c h a. (Mat r c a) -> Effect (STMat r c h a)
```

#### `copyToSTMat`

```purescript
copyToSTMat :: forall r c h a. (Mat s a) -> (STMat r c h a) -> Effect Unit
```

#### `identityST'`

```purescript
identityST' :: forall r c h. Sized r => Sized c => Effect (STMat r c h Number)
```

#### `scaleSTMatrixInt`

```purescript
scaleSTMatrixInt :: forall a h. EuclideanRing a => a -> STArray h a -> Effect Unit
```

#### `scaleSTMatrix`

```purescript
scaleSTMatrix :: forall r c a h. EuclideanRing a => a -> (STMat r c h a) -> Effect (STMat r c h a)
```

#### `fromMatrix`

```purescript
fromMatrix :: forall r c h a. Mat r c a -> Effect (STMat r c h a)
```

#### `runSTMatrix`

```purescript
runSTMatrix :: forall r c a. (forall h. Effect (STMat r c h a)) -> Effect (Mat r c a)
```
