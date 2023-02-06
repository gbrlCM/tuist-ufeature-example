import ProjectDescription

let featureTarget = Target(
    name: "Startup",
    platform: .iOS,
    product: .framework,
    bundleId: "com.artigo.startup.feature",
    sources: ["Sources/**"]
)

let mockFeatureTarget = Target(
    name: "StartupMocks",
    platform: .iOS,
    product: .framework,
    bundleId: "com.artigo.startup.mock",
    sources: ["Mocks/**"],
    dependencies: [
        .target(name: "Startup")
    ]
)

let testFeatureTarget = Target(
    name: "StartupTests",
    platform: .iOS,
    product: .unitTests,
    bundleId: "com.artigo.startup.tests",
    sources: ["Tests/**"],
    dependencies: [
        .target(name: "Startup"),
        .target(name: "StartupMocks")
    ]
)

let exampleFeatureTarget = Target(
    name: "StartupExample",
    platform: .iOS,
    product: .app,
    bundleId: "com.artigo.startup.example",
    sources: ["Examples/**"],
    dependencies: [
        .target(name: "Startup")
    ]
)

let project = Project(
    name: "Startup",
    targets: [
        featureTarget,
        testFeatureTarget,
        mockFeatureTarget,
        exampleFeatureTarget
    ]
)
