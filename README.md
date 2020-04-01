# JFLayout
A simple way to use Auto Layout

Use Functions:
```
redView.layout {
    $0.topAnchor.equal(to: view.safeAreaLayoutGuide.topAnchor, constant: 30)
    $0.leadingAnchor.equal(to: view.leadingAnchor, constant: 30)
    $0.heightAnchor.equal(to: view.heightAnchor, multiplier: 0.5, constant: 30)
}

blueView.layout {
    $0.topAnchor.equal(to: redView.topAnchor, constant: 30)
    $0.leadingAnchor.equal(to: redView.trailingAnchor, constant: 30)
    $0.widthAnchor.equal(to: redView.widthAnchor, multiplier: 0.5)
    $0.heightAnchor.equal(to: redView.heightAnchor, multiplier: 0.5, constant: 30)
}
```
Use Operators:
```
redView.layout {
    $0.topAnchor == view.safeAreaLayoutGuide.topAnchor + 30
    $0.leadingAnchor == view.leadingAnchor + 30
    $0.heightAnchor == view.heightAnchor * 0.5 + 30
}

blueView.layout {
    $0.topAnchor == redView.topAnchor + 30
    $0.leadingAnchor == redView.trailingAnchor + 30
    $0.widthAnchor == redView.widthAnchor * 0.5
    $0.heightAnchor == redView.heightAnchor * 0.5 + 30
}
```

