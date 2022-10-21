//
//  EnvObjView.swift
//  lecture6
//
//  Created by Kun  on 20/10/22.
//

import SwiftUI

class Pet: ObservableObject {
    @Published var animal: String
    @Published var name: String
    @Published var age: Int
    var imageName: String
    
    init(animalType: String, animalName: String, animalAge: Int, imageName: String) {
        self.animal = animalType
        self.name = animalName
        self.age = animalAge
        self.imageName = imageName
        
    }
}

struct EnvObjView: View {
    @StateObject var myPet: Pet = Pet(animalType: "capybara", animalName: "bella", animalAge: 1, imageName: "capybara")
    
    var body: some View {
        VStack {
            displayPetView()
        }
        .environmentObject(myPet)
    }
}

struct displayPetView: View {
    @EnvironmentObject var myPet: Pet
    var body: some View {
        VStack {
            HStack {
                Text(myPet.animal)
                Text(myPet.name)
                Text(String(myPet.age))
            }
            Image(myPet.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            Button("Inocrement Age") {
                myPet.age += 1
            }
        }
    }
}

struct EnvObjView_Previews: PreviewProvider {
    static var previews: some View {
        EnvObjView()
    }
}
