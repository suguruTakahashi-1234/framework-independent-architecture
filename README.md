# framework-independent-architecture

```mermaid
graph TD;
    FrameworkLayer-->DomainLayer;
    FrameworkLayer-->FirebaseCrashlytics;
    PresentationLayer-->DomainLayer;
    PresentationLayer-->FrameworkLayer;
```