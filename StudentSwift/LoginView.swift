import SwiftUI

struct LoginView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var isPasswordVisible: Bool = false

    var body: some View {
        VStack(spacing: 20) {
            Image("logoIpb")
                .resizable()
                .scaledToFit()
                .frame(height: 40)
                .foregroundColor(.blue)

            Image("banner")
                .resizable()
                .scaledToFit()
                .frame(height: 250)
                .foregroundColor(.blue)

            Spacer().frame(height: 30)

            VStack(alignment: .leading, spacing: 16) {
                Text("Username")
                    .font(.caption)
                    .foregroundColor(.primary)
                    .padding(.horizontal, 20)

                TextField("Username", text: $username)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal, 20)
                    .padding(.vertical, 5)
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color(UIColor.separator), lineWidth: 1)
                            .padding(.horizontal, 20)
                    )

                Text("Password")
                    .font(.caption)
                    .foregroundColor(.primary)
                    .padding(.horizontal, 20)

                HStack {
                    if isPasswordVisible {
                        TextField("Password", text: $password)
                            .textFieldStyle(PlainTextFieldStyle())
                    } else {
                        SecureField("Password", text: $password)
                            .textFieldStyle(PlainTextFieldStyle())
                    }
                    
                    Button(action: {
                        isPasswordVisible.toggle()
                    }) {
                        Image(systemName: isPasswordVisible ? "eye" : "eye.slash")
                            .foregroundColor(.gray)
                    }
                }
                .padding(10)
                .background(RoundedRectangle(cornerRadius: 8).stroke(Color(UIColor.separator), lineWidth: 1))
                .padding(.horizontal, 20)

                Button(action: {
                    print("Login tapped!")
                }) {
                    Text("Log In")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(10)
                        .padding(.horizontal, 20)
                }
            }
        }
        .padding()
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
