import PackageDescription

let package = Package(
    name: "libswiftandroid.so",
    targets: [
    ],
    dependencies: [
        .Package(url: "https://github.com/SwiftJava/java_swift.git", versions: Version(2,1,1)..<Version(3,0,0))
    ]
)
