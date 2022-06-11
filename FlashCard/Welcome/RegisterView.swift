//
//  RegisterView.swift
//  FlashCard
//
//  Created by Alexander Snitko on 8.06.22.
//

import SwiftUI

struct RegisterView: View {
    
    @EnvironmentObject var userManager: UserManager
    @FocusState var nameFieldFocused: Bool
    
    var body: some View {
        VStack {
            Spacer()
            WelcomeMessageView()
            TextField("Enter your name...", text: $userManager.profile.name)
                .focused($nameFieldFocused)
                .submitLabel(.done)
                .onSubmit {
                    registerUser()
                }
                .bordered()
            HStack {
                Spacer()
                Text("\(userManager.profile.name.count)")
                    .font(.caption)
                    .foregroundColor(userManager.isUserNameValid() ? .green : .red)
                    .padding(.trailing)
            }
            .padding(.bottom)
            HStack {
                Spacer()
                Toggle(isOn: $userManager.settings.rememberUser) {
                    Text("Remember Me")
                        .font(.subheadline)
                        .foregroundColor(Color.gray)
                }
                .fixedSize()
            }
            Button {
                registerUser()
            } label: {
                HStack {
                    Image(systemName: "checkmark")
                        .resizable()
                        .frame(width: 16, height: 16, alignment: .center)
                    Text("OK")
                        .font(.body)
                        .bold()
                }
            }
            .disabled(!userManager.isUserNameValid())
            .bordered()
            Spacer()
        }
        .background(WelcomeBackgroundImage())
        .padding()
    }
}

extension RegisterView {
    private func registerUser() {
        nameFieldFocused = false
        
        if userManager.settings.rememberUser {
            userManager.persistProfile()
        } else {
            userManager.clear()
        }
        userManager.persistSettings()
        userManager.setRegistered()
    }
}

struct RegisterView_Previews: PreviewProvider {
    static let user = UserManager(name: "Alexander")
    static var previews: some View {
        RegisterView()
            .environmentObject(user)
    }
}
