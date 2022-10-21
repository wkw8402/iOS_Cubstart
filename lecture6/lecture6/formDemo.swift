//
//  formDemo.swift
//  lecture6
//
//  Created by Kun  on 20/10/22.
//

import SwiftUI

struct formDemo: View {
    var body: some View {
        Form {
            Section(header: Text("Section 1")) {
                Text("Hi")
                Text("Hello")
                Text("Hi")
            }
            Text("Hello")
            Text("Hi")
            Text("Hello")
            Text("Hi")
            Text("Hello")
            Text("Hi")
            Text("Hello")
            Group {
                Text("Hi")
                Text("Hello")
                Text("Hi")
                Text("Hello")
                Text("Hi")
                Text("Hello")
            }
        }
        
    }
}

struct formDemo_Previews: PreviewProvider {
    static var previews: some View {
        formDemo()
    }
}
