//
//  NodeView.swift
//  ICS4U-Culminating
//
//  Created by Diego Sierraalta on 2022-05-31.
//

import SwiftUI

struct NodeView: View {
    
    // MARK: Stored properties
    let node: Node
    @Binding var activeNode: Int
    
    // MARK: Computed properties
    var body: some View {
        
        ScrollView {
            
            VStack(alignment: .leading) {
                
                // Page number
                Text("\(node.id)")
                    .padding()
                    
                
                // Iterate over all the paragraphs
                ForEach(node.paragraphs, id: \.self) { currentParagraph in
                    Text(currentParagraph)
                        .padding()
                }
                
                // Show the image if there is one

                if let image = node.image {
                    Image(image)
                        .resizable()
                        .scaledToFit()
                    }

                
                // Show choices, when they exist
                ForEach(node.edges, id: \.self) { currentEdge in
                    HStack {
                        Spacer()
                        
                        Text(currentEdge.prompt)
                            .padding()
                            .multilineTextAlignment(.trailing)
                            .onTapGesture {
                                // Advance to whatever node this prompt is for
                                activeNode = currentEdge.destinationId
                            }
                    }
                }
                
            }
        }
        
    }
}

//struct NodeView_Previews: PreviewProvider {
//    static var previews: some View {
//        NodeView()
//    }
//}
