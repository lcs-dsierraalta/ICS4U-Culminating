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
                          
                          "Days pass and you are still contemplating life while staring at the massive cliff just on the other side of the window. You hear the guard coming. It's meal time, and you don't know whether to be excited or not because the food they've been serving a lot of disgusting food.",
                          
                          "The guard opens the door to give you the food. You ponder why, you don't just open the door to a prisoner's cell like nothing is going to happen. But that doesn't matter right now. The door is open and you have an opening. What will you do?"],
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
    
    
    3 : Node(id: 3,
             paragraphs: ["You decided to accept the meal instead of trying anything that could get you punished or killed, smart decision.",
                          
                          "The guard then leaves. As soon as he leaves you look at your food and you notice that the cutlery is made of metal.",
                          
                          "You then come up with two more ideas, what will you do?"],
             image: nil,
             edges: [Edge(destinationId: 12,
                          prompt: "*Use the knife to attempt escape*"),
                     Edge(destinationId: 13,
                          prompt: "*Fake death by eating the food*")]),
    
    
    4 : Node(id: 4,
             paragraphs: ["Tackle the guard! You can take him right? He doesn't look that much bigger than you, except the fact that he's almost four inches taller than you, and he's bulky. You practiced karate when you were little, finally you can use it!",
                          
                          "You dash at the guard to try to push him... He won't budge. You try to punch him. He blocks. Flips you and kiss the ground."],
             image: nil,
             edges: [Edge(destinationId: 6,
                          prompt: "Continue ->")]),
    
    
    5 : Node(id: 5, paragraphs: ["This is your chance, you run out of the cell and close the door. The alarm sounds and soon guards begin swarming the hallway.",
                                 "You look right and there is 20 guards running at you.",
                                 
                                 "You look left and there is only one guard guarding the door. Where will you go?"],
             image: nil,
             edges: [Edge(destinationId: 7,
                          prompt: "*Go left, play it safe*"),
                     Edge(destinationId: 8,
                          prompt: "*Go right, take the guards on*")]),
    
    
    6 : Node(id: 6,
             paragraphs: ["The smart option would be to give up, but your mother taught to never give up. You get back up and go in for another punch, but the guard pulls out the taser and tases you. He then proceeds to carry you out of the cell.",
                          
                          "Your punishment is: Solitary confinement... Yayyyyyyy!",
                          
                          "Now you're beat up, in a more secure cell, and alone. How sad."],
             image: nil,
             edges: [Edge(destinationId: 0, prompt: "The End.")]),
    
    
    7 : Node(id: 7, paragraphs: ["You don't feel like trying to fight the guards because you're weak since you skipped PE class, so you go left and try to take on the one guard, because one is better than 20, even you can handle that."],
             
             image: nil,
             edges: [Edge(destinationId: 9,
                          prompt: "Continue ->")]),
    
    
    8 : Node(id: 8, paragraphs: ["You feel confident and go head on against the 20 guards. Don't worry, I'll bring flowers to your funeral",],
             image: nil,
             edges: [Edge(destinationId: 20,
                          prompt: "Continue ->")]),
    
    
    9 : Node(id: 9, paragraphs: [""], image: nil, edges: [Edge(destinationId: 0, prompt: "")]),
    
    
    10 : Node(id: 10, paragraphs: [""], image: nil, edges: [Edge(destinationId: 0, prompt: "")]),
    
    
    11 : Node(id: 11, paragraphs: [""], image: nil, edges: [Edge(destinationId: 0, prompt: "")]),
    
    
    12 : Node(id: 12, paragraphs: [""], image: nil, edges: [Edge(destinationId: 0, prompt: "")]),
    
    
    13 : Node(id: 13, paragraphs: [""], image: nil, edges: [Edge(destinationId: 0, prompt: "")]),
    
    
    14 : Node(id: 14, paragraphs: [""], image: nil, edges: [Edge(destinationId: 0, prompt: "")]),
    
    
    15 : Node(id: 15, paragraphs: [""], image: nil, edges: [Edge(destinationId: 0, prompt: "")]),
    
    
    16 : Node(id: 16, paragraphs: [""], image: nil, edges: [Edge(destinationId: 0, prompt: "")]),
    
    
    17 : Node(id: 17, paragraphs: [""], image: nil, edges: [Edge(destinationId: 0, prompt: "")]),
    
    
    18 : Node(id: 18, paragraphs: [""], image: nil, edges: [Edge(destinationId: 0, prompt: "")]),
    
    
    19 : Node(id: 19, paragraphs: [""], image: nil, edges: [Edge(destinationId: 0, prompt: "")]),
    
    
    20 : Node(id: 20, paragraphs: [""], image: nil, edges: [Edge(destinationId: 0, prompt: "")]),
    
    
    21 : Node(id: 21, paragraphs: [""], image: nil, edges: [Edge(destinationId: 0, prompt: "")]),
    
    
    22 : Node(id: 22, paragraphs: [""], image: nil, edges: [Edge(destinationId: 0, prompt: "")]),
    
    
    23 : Node(id: 23, paragraphs: [""], image: nil, edges: [Edge(destinationId: 0, prompt: "")]),
    
    
    24 : Node(id: 24, paragraphs: [""], image: nil, edges: [Edge(destinationId: 0, prompt: "")]),
    
    
    25 : Node(id: 25, paragraphs: [""], image: nil, edges: [Edge(destinationId: 0, prompt: "")]),
    
    
    26 : Node(id: 26, paragraphs: [""], image: nil, edges: [Edge(destinationId: 0, prompt: "")]),
    
    
    27 : Node(id: 27, paragraphs: [""], image: nil, edges: [Edge(destinationId: 0, prompt: "")]),
    
    
    28 : Node(id: 28, paragraphs: [""], image: nil, edges: [Edge(destinationId: 0, prompt: "")]),
    
    
    29 : Node(id: 29, paragraphs: [""], image: nil, edges: [Edge(destinationId: 0, prompt: "")]),
    
    
    30 : Node(id: 30, paragraphs: [""], image: nil, edges: [Edge(destinationId: 0, prompt: "")]),
    
    
    31 : Node(id: 31, paragraphs: [""], image: nil, edges: [Edge(destinationId: 0, prompt: "")]),
    
    
    32 : Node(id: 32, paragraphs: [""], image: nil, edges: [Edge(destinationId: 0, prompt: "")]),
    
    
    33 : Node(id: 33, paragraphs: [""], image: nil, edges: [Edge(destinationId: 0, prompt: "")]),
    
    
    34 : Node(id: 34, paragraphs: [""], image: nil, edges: [Edge(destinationId: 0, prompt: "")]),
    
    
    35 : Node(id: 35, paragraphs: [""], image: nil, edges: [Edge(destinationId: 0, prompt: "")]),
    
    
    36 : Node(id: 36, paragraphs: [""], image: nil, edges: [Edge(destinationId: 0, prompt: "")]),
    
    
    37 : Node(id: 37, paragraphs: [""], image: nil, edges: [Edge(destinationId: 0, prompt: "")]),
    
    
    38 : Node(id: 38, paragraphs: [""], image: nil, edges: [Edge(destinationId: 0, prompt: "")]),
    
    
    39 : Node(id: 39, paragraphs: [""], image: nil, edges: [Edge(destinationId: 0, prompt: "")]),
    
    
    40 : Node(id: 40, paragraphs: [""], image: nil, edges: [Edge(destinationId: 0, prompt: "")]),
    
    
    41 : Node(id: 41, paragraphs: [""], image: nil, edges: [Edge(destinationId: 0, prompt: "")]),
    
    
    42 : Node(id: 42, paragraphs: [""], image: nil, edges: [Edge(destinationId: 0, prompt: "")]),
    
    
    43 : Node(id: 43, paragraphs: [""], image: nil, edges: [Edge(destinationId: 0, prompt: "")]),
    
    
    44 : Node(id: 44, paragraphs: [""], image: nil, edges: [Edge(destinationId: 0, prompt: "")]),
    
    
    45 : Node(id: 45, paragraphs: [""], image: nil, edges: [Edge(destinationId: 0, prompt: "")]),
    
    
    46 : Node(id: 46, paragraphs: [""], image: nil, edges: [Edge(destinationId: 0, prompt: "")]),
    
    
    47 : Node(id: 47, paragraphs: [""], image: nil, edges: [Edge(destinationId: 0, prompt: "")]),
    
    
    48 : Node(id: 48, paragraphs: [""], image: nil, edges: [Edge(destinationId: 0, prompt: "")]),
    
    
    49 : Node(id: 49, paragraphs: [""], image: nil, edges: [Edge(destinationId: 0, prompt: "")]),
    
    
    50 : Node(id: 50, paragraphs: [""], image: nil, edges: [Edge(destinationId: 0, prompt: "")]),
    
    
    51 : Node(id: 51, paragraphs: [""], image: nil, edges: [Edge(destinationId: 0, prompt: "")]),
    
    
    52 : Node(id: 52, paragraphs: [""], image: nil, edges: [Edge(destinationId: 0, prompt: "")]),
    
    
    53 : Node(id: 53, paragraphs: [""], image: nil, edges: [Edge(destinationId: 0, prompt: "")]),
    
    
    54 : Node(id: 54, paragraphs: [""], image: nil, edges: [Edge(destinationId: 0, prompt: "")]),
    
    
    55 : Node(id: 55, paragraphs: [""], image: nil, edges: [Edge(destinationId: 0, prompt: "")]),
    
    
    56 : Node(id: 56, paragraphs: [""], image: nil, edges: [Edge(destinationId: 0, prompt: "")]),
    
    
    57 : Node(id: 57, paragraphs: [""], image: nil, edges: [Edge(destinationId: 0, prompt: "")]),
    
    
    58 : Node(id: 58, paragraphs: [""], image: nil, edges: [Edge(destinationId: 0, prompt: "")]),
    
    
    59 : Node(id: 59, paragraphs: [""], image: nil, edges: [Edge(destinationId: 0, prompt: "")]),
    
    
    60 : Node(id: 60, paragraphs: [""], image: nil, edges: [Edge(destinationId: 0, prompt: "")]),
    
    
    61 : Node(id: 61, paragraphs: [""], image: nil, edges: [Edge(destinationId: 0, prompt: "")]),
    
    
    62 : Node(id: 62, paragraphs: [""], image: nil, edges: [Edge(destinationId: 0, prompt: "")]),
    
    
    63 : Node(id: 63, paragraphs: [""], image: nil, edges: [Edge(destinationId: 0, prompt: "")]),
    
    
    64 : Node(id: 64, paragraphs: [""], image: nil, edges: [Edge(destinationId: 0, prompt: "")]),
    
    
    65 : Node(id: 65, paragraphs: [""], image: nil, edges: [Edge(destinationId: 0, prompt: "")]),
    
    
    66 : Node(id: 66, paragraphs: [""], image: nil, edges: [Edge(destinationId: 0, prompt: "")]),
    
    
    67 : Node(id: 67, paragraphs: [""], image: nil, edges: [Edge(destinationId: 0, prompt: "")]),
    
    
    68 : Node(id: 68, paragraphs: [""], image: nil, edges: [Edge(destinationId: 0, prompt: "")]),
    
    
    69 : Node(id: 69, paragraphs: [""], image: nil, edges: [Edge(destinationId: 0, prompt: "")]),
    
    
    70 : Node(id: 70, paragraphs: [""], image: nil, edges: [Edge(destinationId: 0, prompt: "")]),
    
    
    71 : Node(id: 71, paragraphs: [""], image: nil, edges: [Edge(destinationId: 0, prompt: "")]),
    
    
    72 : Node(id: 72, paragraphs: [""], image: nil, edges: [Edge(destinationId: 0, prompt: "")]),
    
    
    73 : Node(id: 73, paragraphs: [""], image: nil, edges: [Edge(destinationId: 0, prompt: "")]),
    
    
    74 : Node(id: 74, paragraphs: [""], image: nil, edges: [Edge(destinationId: 0, prompt: "")]),
    
    
    75 : Node(id: 75, paragraphs: [""], image: nil, edges: [Edge(destinationId: 0, prompt: "")]),
    
    
    76 : Node(id: 76, paragraphs: [""], image: nil, edges: [Edge(destinationId: 0, prompt: "")]),
    
    
    77 : Node(id: 77, paragraphs: [""], image: nil, edges: [Edge(destinationId: 0, prompt: "")]),
    
    
    78 : Node(id: 78, paragraphs: [""], image: nil, edges: [Edge(destinationId: 0, prompt: "")]),
    
    
    79 : Node(id: 79, paragraphs: [""], image: nil, edges: [Edge(destinationId: 0, prompt: "")]),
    
    
    80 : Node(id: 80, paragraphs: [""], image: nil, edges: [Edge(destinationId: 0, prompt: "")]),
    
    
    81 : Node(id: 81, paragraphs: [""], image: nil, edges: [Edge(destinationId: 0, prompt: "")]),
    
    
    82 : Node(id: 82, paragraphs: [""], image: nil, edges: [Edge(destinationId: 0, prompt: "")]),
    
    
    83 : Node(id: 83, paragraphs: [""], image: nil, edges: [Edge(destinationId: 0, prompt: "")]),
    
    
    84 : Node(id: 84, paragraphs: [""], image: nil, edges: [Edge(destinationId: 0, prompt: "")]),
    
    
    85 : Node(id: 85, paragraphs: [""], image: nil, edges: [Edge(destinationId: 0, prompt: "")]),
    
    
    86 : Node(id: 86, paragraphs: [""], image: nil, edges: [Edge(destinationId: 0, prompt: "")]),
    
    
    87 : Node(id: 87, paragraphs: [""], image: nil, edges: [Edge(destinationId: 0, prompt: "")]),
    
    
    88 : Node(id: 88, paragraphs: [""], image: nil, edges: [Edge(destinationId: 0, prompt: "")]),
    
    
    89 : Node(id: 89, paragraphs: [""], image: nil, edges: [Edge(destinationId: 0, prompt: "")]),
]
