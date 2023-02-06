import ProjectDescription

let featureTarget = Target(
    name: "uFeature",
    platform: .iOS,
    product: .framework,
    bundleId: "com.ufeature.feature",
    sources: ["Sources/**"]
)

let mockFeatureTarget = Target(
    name: "uFeatureMocks",
    platform: .iOS,
    product: .framework,
    bundleId: "com.ufeature.mock",
    sources: ["Mocks/**"],
    dependencies: [
        .target(name: "uFeature")
    ]
)

let testFeatureTarget = Target(
    name: "uFeatureTests",
    platform: .iOS,
    product: .unitTests,
    bundleId: "com.ufeature.tests",
    sources: ["Tests/**"],
    dependencies: [
        .target(name: "uFeature"),
        .target(name: "uFeatureMocks")
    ]
)

let exampleFeatureTarget = Target(
    name: "uFeatureExample",
    platform: .iOS,
    product: .app,
    bundleId: "com.ufeature.example",
    sources: ["Examples/**"],
    dependencies: [
        .target(name: "uFeature")
    ]
)

let project = Project(
    name: "uFeature",
    targets: [
        featureTarget,
        testFeatureTarget,
        mockFeatureTarget,
        exampleFeatureTarget
    ]
)
