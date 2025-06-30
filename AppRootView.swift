// App/AppRootView.swift
struct AppRootView: View {
    var body: some View {
        TabView {
            HomeView(viewModel: ItemsViewModel(fetchItemsUseCase: FetchItemsUseCase(repository: ItemRepositoryImpl())))
                .tabItem {
                    Label("Menu", systemImage: "list.dash")
                }
            
            Text("Cart View (To Be Implemented)")
                .tabItem {
                    Label("Cart", systemImage: "cart")
                }
        }
    }
}
