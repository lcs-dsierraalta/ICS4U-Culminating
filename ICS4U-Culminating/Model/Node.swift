//
//  Node.swift
//  ICS4U-Culminating
//
//  Created by Moritz Asche on 2022-05-25.
//

import Foundation

struct Node: Identifiable {
    let id: Int                       //The Node Id
    let paragraphs: [String]          //Models paragraph on one of the pages of the book
    let image: String?                //name of image, if there is one
    let edges: [Edge]                  //A list of id's of nodes this node is connected to
}

// An empty node
let emptyNode = Node(id: 0, paragraphs: [], image: nil, edges: [])

struct Edge: Hashable{
    let destinationId: Int
    let prompt: String
}

let storyNodes: [Int : Node] = [
    
    Node(id: 1,
         paragraphs: ["Recently there was a robbery at the royal bank. You single handedly managed to steal the most precious diamond in the world, but just as you were running to your getaway car, your driver left when he saw all the police cars coming. You had everything planned out, yet still failed. What a shame."
                      
                      "You are taken to a maximum security prison at the peak of the highest mountain in the country."
                      
                      "You are placed in a cell to rot for the rest of your life. However, there is a woman in your cell, at least you won't be alone."
                      
                      "Days pass and you are ",
                     ],
         image: nil,
         edges: <#T##[Edge]#>)
    
]
