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
            
            ZStack {
                
                
                
                VStack(alignment: .leading) {
                    
                    // Page number
                    Text("\(node.id)")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding()
                        .foregroundColor(.white)
                        .onTapGesture {
                            activeNode = 0
                        }
                    
                    // Iterate over all the paragraphs
                    ForEach(node.paragraphs, id: \.self) { currentParagraph in
                        Text(currentParagraph)
                            .padding(.horizontal)
                            .padding(.bottom)
                            .foregroundColor(.white)
                            .font(.custom("CourierNewPS-BoltMT", size: 24))
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
                            
                            Text(try! AttributedString(markdown: currentEdge.prompt))
                                .padding()
                                .foregroundColor(.white)
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
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(
            Rectangle()
                .foregroundColor(.black)
                .ignoresSafeArea(.all)
            
        )
            

        
    }
}

//struct NodeView_Previews: PreviewProvider {
//    static var previews: some View {
//        NodeView()
//    }
//}
