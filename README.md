# SwiftUI_MVVM_Demo

Пример организации проекта на `SwiftUI` с `MVVM`. 

В проект добавлен шаблон `MVVM` для `Xcode` (`MVVM Module.xctemplate`)

<img width="388" alt="Снимок экрана 2023-11-12 в 15 24 21" src="https://github.com/MikheevaValentina/SwiftUI_MVVM_Demo/assets/150585346/5c7a36c2-f741-429f-b0c0-269c8f903603">

ViewModelProtocol:
```swift
typealias ExampleModuleViewModel = ExampleModuleViewInput & ExampleModuleViewOutput

protocol ExampleModuleViewInput: ObservableObject {
}

protocol ExampleModuleViewOutput: ObservableObject {
}
```

View:
```swift
struct ExampleModuleView<ViewModel: ExampleModuleViewModel>: View {
    @ObservedObject var viewModel: ViewModel

    var body: some View {
        ...
    }
}

#Preview {
    ExampleModuleView(viewModel: MockExampleModuleViewModel())
}
```

При сознании модулей по этому шаблону `Xcode` создает ссылки на папки (синие папки) и файлы в них не будут видны в проекте.
Чтобы решить эту проблему:
* Щелкните правой кнопкой мыши на добавленный модуль и выберете `Delete`/`Remove Reference`
* Далее верните эту папку через `Add files to…`/`Create groups`
