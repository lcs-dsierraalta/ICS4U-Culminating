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
let emptyNode = Node(id: 0,
                     paragraphs: [],
                     image: nil,
                     edges: [])

struct Edge: Hashable {
    let destinationId: Int
    let prompt: String
}

let storyNodes: [Int : Node] = [
    
    1 : Node(id: 1,
             

             paragraphs: ["Recently there was a robbery at the royal bank. You single handedly managed to steal the most precious diamond in the world, but just as you were running to your getaway car, your driver left when he saw all the police cars coming. You had everything planned out, yet still failed. What a shame.",
                          
                          "You are taken to a maximum security prison at the peak of the highest mountain in the country. You are placed in a cell to rot for the rest of your life. However, there is a woman in your cell, at least you won't be alone.",
                          
                          "Days pass and you are still contemplating life while staring at the massive cliff just on the other side of the window. You hear the gueard coming. It's meal time, and you don't know whether to be excited or not because the food they've been serving a lot of disgusting food.",
                          
                          "The guard opens the door to give you the food. You ponder why, you don't just open the door to a prisoner's cell like nothing is going to happen. But that doesn't matter right now. The door is open and you have an opening. What will you do?",
                         ],
             image: nil,
             edges: [Edge(destinationId: 2,
                          prompt: "*Attempt escape*"),
                     Edge(destinationId: 3,
                          prompt: "*Accept meal*"),
                     Edge(destinationId: 10,
                          prompt: "*Refuse meal*")]),
    
    2 : Node(id: 2,
             paragraphs: ["You committed to trying to escape because this may be the only chance you get.",
                          
                          "In a split-second, you come up with two ideas, one more aggressive than the other."],
             
             
             image: nil,
             edges: [Edge(destinationId: 4, prompt: "")]),
    

         paragraphs: ["Recently there was a robbery at the royal bank. You single handedly managed to steal the most precious diamond in the world, but just as you were running to your getaway car, your driver left when he saw all the police cars coming. You had everything planned out, yet still failed. What a shame.",
                      
                      "You are taken to a maximum security prison at the peak of the highest mountain in the country. You are placed in a cell to rot for the rest of your life. However, there is a woman in your cell, at least you won't be alone.",
                      
                      "Days pass and you are still contemplating life while staring at the massive cliff just on the other side of the window. You hear the gueard coming. It's meal time, and you don't know whether to be excited or not because the food they've been serving a lot of disgusting food.",
                      
                      "The guard opens the door to give you the food. You ponder why, you don't just open the door to a prisoner's cell like nothing is going to happen. But that doesn't matter right now. The door is open and you have an opening. What will you do?",
                     ],
         image: nil,
         edges: [Edge(destinationId: 2,
                      prompt: "*Attempt escape*"),
         Edge(destinationId: 3,
              prompt: "*Accept meal*"),
         Edge(destinationId: 10,
              prompt: "*Refuse meal*")]),
    
    2 : Node(id: 2,
             paragraphs: ["You committed to trying to escape because this may be the only chance you get.",
                         
                         "In a split-second, you come up with two ideas, one more aggressive than the other."],
             image: nil,
             edges: [Edge(destinationId: 4,
                          prompt: "*Tackle the guard*"),
                     Edge(destinationId: 5,
                          prompt: "*Dash out of the cell*")]),
    
    3 : Node(id: <#T##Int#>,
             paragraphs: <#T##[String]#>,
             image: <#T##String?#>,
             edges: <#T##[Edge]#>)


    
]
