struct RowView: View {
    let item: MenuItem
    var body: some View {
        HStack(alignment: .center, spacing: 10) {
            Image(systemName: "circle.fill")
                .foregroundColor(.blue)
                .frame(width: 30, height: 30)
            Text("Hello, World!")
        }
    }
}
