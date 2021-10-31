//
//  LoginView.swift
//  Cell Prototype
//
//  Created by Anna Delova on 10/29/21.
//


import SwiftUI
import Combine

struct LoginView: View {

    @Binding var shouldShowMainView: Bool

    @State private var login =  ""
    @State private var password =  ""
    @State private var shouldShowLogo: Bool = true
    @State private var incorrectCredentials = false

    private let keyboardIsOnPublisher = Publishers.Merge(
        NotificationCenter.default.publisher(for: UIResponder.keyboardWillChangeFrameNotification)
            .map { _ in true },
        NotificationCenter.default.publisher(for: UIResponder.keyboardWillHideNotification)
            .map { _ in false }
    )
        .removeDuplicates()

    var body: some View {

        ZStack {
            Color(.white)
            ScrollView() {
                VStack {
                    // MARK: - Logo
                    if shouldShowLogo {
                        Image("vk")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 200, height: 200, alignment: .bottom )
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    }
                    // MARK: - Login Field
                    textView(text: "Телефон или e-mail:")
                    TextField("", text: $login)
                        .frame(maxWidth: 350)
                    // MARK: - Password Field
                    textView(text: "Пароль:")
                    SecureField("", text: $password)
                        .frame(maxWidth: 350)
                        .background(Color.white)

                }
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

                // MARK: - Login Button
                HStack(alignment: .center, spacing: 7.0) {
                    Button(action: {
                        verifyLoginData()
                    }) {
                        Text("Войти")
                            .font(.headline)
                            .foregroundColor(.white)
                    }
                    .frame(width: 100, height: 30, alignment: .center)
                    .background(Color.blue.opacity(0.7))
                    .disabled(login.isEmpty || password.isEmpty)
                    .cornerRadius(15)

                    Button(action: {
                        login = ""
                        password = ""
                    }) {
                        Text("Отмена")
                            .font(.headline)
                            .foregroundColor(.white)

                    }
                    .frame(width: 100, height: 30, alignment: .center)
                    .background(Color.gray.opacity(0.7))
                    .cornerRadius(15)

                }
                .frame(width: 350, height: 30, alignment: .leading)

                Divider()

                VStack {
                    // MARK: - Register area
                    Text("Еще не зарегистрированы?")
                        .foregroundColor(.gray)
                        .font(.subheadline)
                        .frame(width: 350, height: 30, alignment: .leading)
                        .padding()

                    Button(action: {
                        print("Register")
                    }) {
                        Text("Зарегистрироваться")
                            .foregroundColor(.white)
                    }
                    .frame(width: 250, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .background(Color.blue.opacity(0.7))
                    .cornerRadius(15)
                }
                .onReceive(keyboardIsOnPublisher) { isKeyboardOn in
                    withAnimation(Animation.easeInOut(duration: 0.5)) {
                        self.shouldShowLogo = !isKeyboardOn
                    }
                }
            }.onTapGesture {
                UIApplication.shared.endEditing()
            }.alert(isPresented: $incorrectCredentials, content: {
                Alert(title: Text("Error"), message: Text("Incorrent Login/Password was entered"))
            })
            .ignoresSafeArea(.keyboard, edges: .all)
       }
    }
}
extension LoginView {
    private func verifyLoginData() {
        if login == "123" && password == "123" {
            shouldShowMainView = true
        } else {
            incorrectCredentials = true
        }
        login = ""
        password = ""
    }
}
extension UIApplication {
   func endEditing() {
       sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
   }
}
struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(shouldShowMainView: .constant(false))
    }
}
struct textView: View {
    let text: String

    var body: some View {
        Text(text)
            .font(.subheadline)
            .foregroundColor(Color.gray)
            .padding(.top, 20)
            .padding(.bottom, 10)
            .padding(.leading, -180)
    }
}
