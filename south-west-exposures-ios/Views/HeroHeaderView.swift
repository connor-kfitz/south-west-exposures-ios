import SwiftUI

struct HeroHeaderView: View {
    var body: some View {
        VStack {
            Spacer(minLength: 0)

            // Inner container
            ZStack {
                // Background radial gradient
                RadialGradient(
                    gradient: Gradient(colors: [Color.blue, Color.black]),
                    center: .center,
                    startRadius: 5,
                    endRadius: 500
                )
                .edgesIgnoringSafeArea(.top)

                // Content
                VStack(alignment: .leading, spacing: 16) {
                    Text("Solutions\nfor innovative\ndrug therapies")
                        .font(.system(size: 48, weight: .bold))
                        .foregroundColor(.white)

                    Text("South West Exposures is a firm specializing in the design and fabrication of disruptive shielding technology.")
                        .font(.system(size: 18))
                        .foregroundColor(.white)
                        .lineLimit(nil)

                    // Button
                    NavigationLink(destination: ProductsView()) {
                        Text("Shop now")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding(.horizontal, 24)
                            .padding(.vertical, 12)
                            .background(Color.blue)
                            .cornerRadius(8)
                    }
                }
                .padding(.horizontal, 24)
                .padding(.vertical, 48)
                .frame(maxWidth: 663, alignment: .leading)
            }
            .frame(maxWidth: 1060)
        }
        .frame(maxWidth: 1440)
        .padding(.bottom, 50) // adjust for smaller vs larger devices if needed
    }
}

// Example ProductsView placeholder
struct ProductsView: View {
    var body: some View {
        Text("Products Page")
    }
}

struct HeroHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            HeroHeaderView()
        }
    }
}
