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
    let edges: [Edge]
    let ending: Ending?
}

// An empty node
let emptyNode = Node(id: 0,
                     paragraphs: [],
                     image: nil,
                     edges: [],
                     ending: nil)

struct Edge: Hashable {
    let destinationId: Int
    let prompt: String
}

enum EndingClassification: String, CaseIterable {
    case great = "Great"
    case favorable = "Favorable"
    case mediocre = "Mediocre"
    case disappointing = "Disappointing"
    case catastrophic = "Catastrophic"
}

struct Ending {
    let classification: EndingClassification
    let description: String
    var color: String {
        switch self.classification {
        case .great:
            return "#90C8E0"  // Light blue
        case .favorable:
            return "#FFDE5F"  // Pale yellow
        case .mediocre:
            return "#D7883C"  // Orange
        case .disappointing:
            return "#C1531E"  // Deep orange
        case .catastrophic:
            return "#AB1800"  // Deep red
        }
    }
}

struct StoryInformation {
    let title: String
    let authorOrAuthors: String
    let seriesInfo: String
    let publisherInfo: String
}

let storyInfo = StoryInformation(title: "The Big Escape",
                                 authorOrAuthors: "M.Asche, D. Sierraalta",
                                 seriesInfo: "CHOOSE YOUR OWN ADVENTURE #1",
                                 publisherInfo: "Big Stroies, Choosfield, Canada, 2022")



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
                          prompt: "*Refuse meal*")],
            ending: nil),


    2 : Node(id: 2,
             paragraphs: ["You committed to trying to escape because this may be the only chance you get.",
                          
                          "In a split-second, you come up with two ideas, one more aggressive than the other."],
             image: nil,
             edges: [Edge(destinationId: 4,
                          prompt: "*Tackle the guard*"),
                     Edge(destinationId: 5,
                          prompt: "*Dash out of the cell*")],
            ending: nil),


    3 : Node(id: 3,
             paragraphs: ["You decided to accept the meal instead of trying anything that could get you punished or killed, smart decision.",
                          
                          "The guard then leaves. As soon as he leaves you look at your food and you notice that the cutlery is made of metal.",
                          
                          "You then come up with two more ideas, what will you do?"],
             image: nil,
             edges: [Edge(destinationId: 12,
                          prompt: "*Use the knife to attempt escape*"),
                     Edge(destinationId: 13,
                          prompt: "*Fake death by eating the food*")],
            ending: nil),


    4 : Node(id: 4,
             paragraphs: ["Tackle the guard! You can take him right? He doesn't look that much bigger than you, except the fact that he's almost four inches taller than you, and he's bulky. You practiced karate when you were little, finally you can use it!",
                          
                          "You dash at the guard to try to push him... He won't budge. You try to punch him. He blocks. Flips you and kiss the ground."],
             image: nil,
             edges: [Edge(destinationId: 6,
                          prompt: "Continue ->")],
            ending: nil),


    5 : Node(id: 5, paragraphs: ["This is your chance, you run out of the cell and close the door. The alarm sounds and soon guards begin swarming the hallway.",
                                 "You look right and there is 20 guards running at you.",
                                 
                                 "You look left and there is only one guard guarding the door. Where will you go?"],
             image: nil,
             edges: [Edge(destinationId: 7,
                          prompt: "*Go left, play it safe*"),
                     Edge(destinationId: 8,
                          prompt: "*Go right, take the guards on*")],
            ending: nil),


    6 : Node(id: 6,
             paragraphs: ["The smart option would be to give up, but your mother taught to never give up. You get back up and go in for another punch, but the guard pulls out the taser and tases you. He then proceeds to carry you out of the cell.",
                          
                          "Your punishment is: Solitary confinement... Yayyyyyyy!",
                          
                          "Now you're beat up, in a more secure cell, and alone. How sad."],
             image: nil,
             edges: [Edge(destinationId: 0, prompt: "The End.")],
             ending: Ending(classification: .disappointing, description: "Solitary\\nconfinement")),


    7 : Node(id: 7, paragraphs: ["You don't feel like trying to fight the guards because you're weak since you skipped PE class, so you go left and try to take on the one guard, because one is better than 20, even you can handle that."],
             
             image: nil,
             edges: [Edge(destinationId: 9,
                          prompt: "Continue ->")],
            ending: nil),


    8 : Node(id: 8, paragraphs: ["You feel confident and go head on against the 20 guards. Don't worry, I'll bring flowers to your funeral.",],
             image: nil,
             edges: [Edge(destinationId: 20,
                          prompt: "Continue ->")],
            ending: nil),


    9 : Node(id: 9, paragraphs: ["As you're running towards the guard, you notice that his keys are dangling from his waist.",
                                 
                                 "You move quick and slam his head against the wall, that's gonna leave a mark.",
                                 
                                 "You take his keys and baton and go through the doorway, but don't let your guard down, the guards are still following you."],
             image: nil,
             edges: [Edge(destinationId: 70,
                          prompt: "Continue ->")],
            ending: nil),


    10 : Node(id: 10, paragraphs: ["You're not hungry and refuse the meal."],
              image: nil,
              edges: [Edge(destinationId: 11,
                           prompt: "Continue ->")],
             ending: nil),


    11 : Node(id: 11, paragraphs: ["The guard leaves the food anyways because he's nice. Maybe you should eat it.",
                                   
                                   "You're too stubborn so you don't eat. So you die from starvation... Lame."],
              image: nil,
              edges: [Edge(destinationId: 0,
                           prompt: "The End.")],
              ending: Ending(classification: .disappointing, description: "Starvation")),


    12 : Node(id: 12, paragraphs: ["You decide to use the knife.",
                                   
                                   "You wait for the guard to leave.",
                                   
                                   "How will you use the knife?"],
              image: nil,
              edges: [Edge(destinationId: 14,
                           prompt: "*Kill the woman in your cell*"),
                      Edge(destinationId: 21,
                           prompt: "*Wait longer to think of an idea*")],
             ending: nil),


    13 : Node(id: 13, paragraphs: ["You pretend that you're starving and immediately start devouring your food.",
                                   
                                   "This is the perfect oppotunity to fake your death. You pretend that you're choking and fall to the ground, this alarms the guards."],
              image: nil,
              edges: [Edge(destinationId: 22,
                           prompt: "Continue ->")],
             ending: nil),


    14 : Node(id: 14, paragraphs: ["After the guard leaves, you grab the knife and stab the woman",
                                   
                                   "She's shocked and sad, but you pay no mind to her feelings",
                                   
                                   "She drops to the floor and you put the knife on her hand, making it look like suicide. What now?"],
              image: nil,
              edges: [Edge(destinationId: 15,
                           prompt: "*Call the guards*"),
              Edge(destinationId: 16, prompt: "*Play dead*")],
             ending: nil),

  
    15 : Node(id: 15, paragraphs: ["You scream and start panicking, shouting at the guards to get over. You curl up in a ball and start rolling around ot make it seem like you witnessed something traumatizing."],
              image: nil,
              edges: [Edge(destinationId: 18,
                           prompt: "Continue ->")],
             ending: nil),


    16 : Node(id: 16,
              paragraphs: ["With your amazing quick thinking, you splash the woman's blood all over you and pretend that she killed you before 'commiting suicide'."],
              image: nil,
              edges: [Edge(destinationId: 17,
                           prompt: "Continue ->")],
             ending: nil),


    17 : Node(id: 17,
              paragraphs: ["The guard hasn't heard any commotion from your cell for a while, so he goes to check on you.",
                           
                           "He finds you and the woman on the floor covered in blood. He starts to panick and calls the other guards over.",
                           
                           "He then starts checking your pulse to see if you're alive. Fatal mistake, you dind't think about that, now the guard knows you're alive.",
                           
                           "You're done for. The guards find you guilty for murdering the woman and setence you to death... Too bad."],
              image: nil,
              edges: [Edge(destinationId: 0,
                           prompt: "The End.")],
              ending: Ending(classification: .catastrophic, description: "Death")),
    
    
    18 : Node(id: 18,
              paragraphs: [""],
              image: nil,
              edges: [Edge(destinationId: 19,
                           prompt: ""),
                      Edge(destinationId: 5,
                           prompt: "")],
             ending: nil),
    
    
    19 : Node(id: 19,
              paragraphs: [""],
              image: nil,
              edges: [Edge(destinationId: 57,
                           prompt: "")],
              ending: nil),
    
    
    20 : Node(id: 20,
              paragraphs: [""],
              image: nil,
              edges: [Edge(destinationId: 64,
                           prompt: "")],
              ending: nil),
    
    
    21 : Node(id: 21,
              paragraphs: [""],
              image: nil,
              edges: [Edge(destinationId: 27,
                           prompt: "")],
              ending: nil),
    
    
    22 : Node(id: 22,
              paragraphs: [""],
              image: nil,
              edges: [Edge(destinationId: 23,
                           prompt: ""),
                      Edge(destinationId: 24,
                           prompt: "")],
              ending: nil),
    
    
    23 : Node(id: 23,
              paragraphs: [""],
              image: nil,
              edges: [Edge(destinationId: 26,
                           prompt: ""),
                      Edge(destinationId: 5,
                           prompt: "")],
              ending: nil),
    
    
    24 : Node(id: 24,
              paragraphs: [""],
              image: nil,
              edges: [Edge(destinationId: 25,
                           prompt: "")],
              ending: nil),
    
    
    25 : Node(id: 25,
              paragraphs: [""],
              image: nil,
              edges: [Edge(destinationId: 0,
                           prompt: "")],
              ending: nil),
    
    
    26 : Node(id: 26,
              paragraphs: [""],
              image: nil,
              edges: [Edge(destinationId: 32,
                           prompt: "")],
              ending: nil),
    
    
    27 : Node(id: 27,
              paragraphs: [""],
              image: nil,
              edges: [Edge(destinationId: 28,
                           prompt: ""),
                      Edge(destinationId: 29,
                           prompt: "")],
              ending: nil),
    
    
    28 : Node(id: 28,
              paragraphs: [""],
              image: nil,
              edges: [Edge(destinationId: 42,
                           prompt: "")],
              ending: nil),
    
    
    29 : Node(id: 29,
              paragraphs: [""],
              image: nil,
              edges: [Edge(destinationId: 30,
                           prompt: "")],
              ending: nil),
    
    
    30 : Node(id: 30,
              paragraphs: [""],
              image: nil,
              edges: [Edge(destinationId: 31,
                           prompt: "")],
              ending: nil),
    
    
    31 : Node(id: 31,
              paragraphs: [""],
              image: nil,
              edges: [Edge(destinationId: 0,
                           prompt: "")],
              ending: nil),
    
    
    32 : Node(id: 32,
              paragraphs: [""],
              image: nil,
              edges: [Edge(destinationId: 33,
                           prompt: ""),
                      Edge(destinationId: 35,
                           prompt: "")],
              ending: nil),
    
    
    33 : Node(id: 33,
              paragraphs: [""],
              image: nil,
              edges: [Edge(destinationId: 34,
                           prompt: "")],
              ending: nil),
    
    
    34 : Node(id: 34,
              paragraphs: [""],
              image: nil,
              edges: [Edge(destinationId: 0,
                           prompt: "")],
              ending: nil),
    
    
    35 : Node(id: 35,
              paragraphs: [""],
              image: nil,
              edges: [Edge(destinationId: 36,
                           prompt: "")],
              ending: nil),
    
    
    36 : Node(id: 36,
              paragraphs: [""],
              image: nil,
              edges: [Edge(destinationId: 37,
                           prompt: "")],
              ending: nil),
    
    
    37 : Node(id: 37,
              paragraphs: [""],
              image: nil,
              edges: [Edge(destinationId: 38,
                           prompt: ""),
                      Edge(destinationId: 39,
                           prompt: "")],
              ending: nil),
    
    
    38 : Node(id: 38,
              paragraphs: [""],
              image: nil,
              edges: [Edge(destinationId: 40,
                           prompt: "")],
              ending: nil),
    
    
    39 : Node(id: 39,
              paragraphs: [""],
              image: nil,
              edges: [Edge(destinationId: 41,
                           prompt: "")],
              ending: nil),
    
    
    40 : Node(id: 40,
              paragraphs: [""],
              image: nil,
              edges: [Edge(destinationId: 0,
                           prompt: "")],
              ending: nil),
    
    
    41 : Node(id: 41,
              paragraphs: [""],
              image: nil,
              edges: [Edge(destinationId: 0,
                           prompt: "")],
              ending: nil),
    
    
    42 : Node(id: 42,
              paragraphs: [""],
              image: nil,
              edges: [Edge(destinationId: 42,
                           prompt: "")],
              ending: nil),
    
    
    43 : Node(id: 43,
              paragraphs: [""],
              image: nil,
              edges: [Edge(destinationId: 44,
                           prompt: "")],
              ending: nil),
    
    
    44 : Node(id: 44,
              paragraphs: [""],
              image: nil,
              edges: [Edge(destinationId: 46,
                           prompt: ""),
                      Edge(destinationId: 45,
                           prompt: "")],
              ending: nil),
    
    
    45 : Node(id: 45,
              paragraphs: [""],
              image: nil,
              edges: [Edge(destinationId: 47,
                           prompt: "")],
              ending: nil),
    
    
    46 : Node(id: 46,
              paragraphs: [""],
              image: nil,
              edges: [Edge(destinationId: 51,
                           prompt: "")],
              ending: nil),
    
    
    47 : Node(id: 47,
              paragraphs: [""],
              image: nil,
              edges: [Edge(destinationId: 48,
                           prompt: "")],
              ending: nil),
    
    
    48 : Node(id: 48,
              paragraphs: [""],
              image: nil,
              edges: [Edge(destinationId: 49,
                           prompt: "")],
              ending: nil),
    
    
    49 : Node(id: 49,
              paragraphs: [""],
              image: nil,
              edges: [Edge(destinationId: 50,
                           prompt: "")],
              ending: nil),
    
    
    50 : Node(id: 50,
              paragraphs: [""],
              image: nil,
              edges: [Edge(destinationId: 0,
                           prompt: "")],
              ending: nil),
    
    
    51 : Node(id: 51,
              paragraphs: [""],
              image: nil,
              edges: [Edge(destinationId: 52,
                           prompt: "")],
              ending: nil),
    
    
    52 : Node(id: 52,
              paragraphs: [""],
              image: nil,
              edges: [Edge(destinationId: 54,
                           prompt: "")],
              ending: nil),
    
    
    53 : Node(id: 53,
              paragraphs: [""],
              image: nil,
              edges: [Edge(destinationId: 55,
                           prompt: ""),
                      Edge(destinationId: 56,
                           prompt: "")],
              ending: nil),
    
    
    54 : Node(id: 54,
              paragraphs: [""],
              image: nil,
              edges: [Edge(destinationId: 0,
                           prompt: "")],
              ending: nil),
    
    
    55 : Node(id: 55,
              paragraphs: [""],
              image: nil,
              edges: [Edge(destinationId: 0,
                           prompt: "")],
              ending: nil),
    
    
    56 : Node(id: 56,
              paragraphs: [""],
              image: nil,
              edges: [Edge(destinationId: 0,
                           prompt: "")],
              ending: nil),
    
    
    57 : Node(id: 57,
              paragraphs: [""],
              image: nil,
              edges: [Edge(destinationId: 0,
                           prompt: "")],
              ending: nil),
    
    
    58 : Node(id: 58,
              paragraphs: [""],
              image: nil,
              edges: [Edge(destinationId: 0,
                           prompt: "")],
              ending: nil),
    
    
    59 : Node(id: 59,
              paragraphs: [""],
              image: nil,
              edges: [Edge(destinationId: 0,
                           prompt: "")],
              ending: nil),
    
    
    60 : Node(id: 60,
              paragraphs: [""],
              image: nil,
              edges: [Edge(destinationId: 0,
                           prompt: "")],
              ending: nil),
    
    
    61 : Node(id: 61,
              paragraphs: [""],
              image: nil,
              edges: [Edge(destinationId: 0,
                           prompt: "")],
              ending: nil),
    
    
    62 : Node(id: 62,
              paragraphs: [""],
              image: nil,
              edges: [Edge(destinationId: 0,
                           prompt: "")],
              ending: nil),
    
    
    63 : Node(id: 63,
              paragraphs: [""],
              image: nil,
              edges: [Edge(destinationId: 0,
                           prompt: "")],
              ending: nil),
    
    
    64 : Node(id: 64,
              paragraphs: [""],
              image: nil,
              edges: [Edge(destinationId: 0,
                           prompt: "")],
              ending: nil),
    
    
    65 : Node(id: 65,
              paragraphs: [""],
              image: nil,
              edges: [Edge(destinationId: 0,
                           prompt: "")],
              ending: nil),
    
    
    66 : Node(id: 66,
              paragraphs: [""],
              image: nil,
              edges: [Edge(destinationId: 0,
                           prompt: "")],
              ending: nil),
    
    
    67 : Node(id: 67,
              paragraphs: [""],
              image: nil,
              edges: [Edge(destinationId: 0,
                           prompt: "")],
              ending: nil),
    
    
    68 : Node(id: 68,
              paragraphs: [""],
              image: nil,
              edges: [Edge(destinationId: 0,
                           prompt: "")],
              ending: nil),
    
    
    69 : Node(id: 69,
              paragraphs: [""],
              image: nil,
              edges: [Edge(destinationId: 0,
                           prompt: "")],
              ending: nil),
    
    
    70 : Node(id: 70,
              paragraphs: ["As you're running through the hallway you notice a huge metal door that reads 'Do not enter!'. Being the smart person you are, you pull out the guard's key and open the door and hide in there as the guards run past."],
              image: nil,
              edges: [Edge(destinationId: 71,
                           prompt: "Continue ->")],
              ending: nil),
    
    
    71 : Node(id: 71,
              paragraphs: ["You start looking around, and get confused. There's a lot of computers and weird-looking tech laying around, you can't understand what any of it is.",
                           
                           "The ceiling lights are off, so you flip a switch that's right next to the door.",
                           
                           "A machine starts up to your left and in front you something really starts to glow really bright. What do you want to do now?"],
              image: nil,
              edges: [Edge(destinationId: 72,
                           prompt: "*Check out the machine*"),
                      Edge(destinationId: 73,
                           prompt: "*Check out the glowy thing*")],
              ending: nil),
    
    
    72 : Node(id: 72,
              paragraphs: [""],
              image: nil,
              edges: [Edge(destinationId: 0,
                           prompt: "")],
              ending: nil),
    
    
    73 : Node(id: 73,
              paragraphs: [""],
              image: nil,
              edges: [Edge(destinationId: 0,
                           prompt: "")],
              ending: nil),
    
    
    74 : Node(id: 74,
              paragraphs: [""],
              image: nil,
              edges: [Edge(destinationId: 0,
                           prompt: "")],
              ending: nil),
    
    
    75 : Node(id: 75,
              paragraphs: [""],
              image: nil,
              edges: [Edge(destinationId: 0,
                           prompt: "")],
              ending: nil),
    
    
    76 : Node(id: 76,
              paragraphs: [""],
              image: nil,
              edges: [Edge(destinationId: 0,
                           prompt: "")],
              ending: nil),
    
    
    77 : Node(id: 77,
              paragraphs: [""],
              image: nil,
              edges: [Edge(destinationId: 0,
                           prompt: "")],
              ending: nil),
    
    
    78 : Node(id: 78,
              paragraphs: [""],
              image: nil,
              edges: [Edge(destinationId: 0,
                           prompt: "")],
              ending: nil),
    
    
    79 : Node(id: 79,
              paragraphs: [""],
              image: nil,
              edges: [Edge(destinationId: 0,
                           prompt: "")],
              ending: nil),
    
    
    80 : Node(id: 80,
              paragraphs: [""],
              image: nil,
              edges: [Edge(destinationId: 0,
                           prompt: "")],
              ending: nil),
    
    
    81 : Node(id: 81,
              paragraphs: [""],
              image: nil,
              edges: [Edge(destinationId: 0,
                           prompt: "")],
              ending: nil),
    
    
    82 : Node(id: 82,
              paragraphs: [""],
              image: nil,
              edges: [Edge(destinationId: 0,
                           prompt: "")],
              ending: nil),
    
    
    83 : Node(id: 83,
              paragraphs: [""],
              image: nil,
              edges: [Edge(destinationId: 0,
                           prompt: "")],
              ending: nil),
    
    
    84 : Node(id: 84,
              paragraphs: [""],
              image: nil,
              edges: [Edge(destinationId: 0,
                           prompt: "")],
              ending: nil),
    
    
    85 : Node(id: 85,
              paragraphs: [""],
              image: nil,
              edges: [Edge(destinationId: 0,
                           prompt: "")],
              ending: nil),
    
    
    86 : Node(id: 86,
              paragraphs: [""],
              image: nil,
              edges: [Edge(destinationId: 0,
                           prompt: "")],
              ending: nil),
    
    
    87 : Node(id: 87,
              paragraphs: [""],
              image: nil,
              edges: [Edge(destinationId: 0,
                           prompt: "")],
              ending: nil),
    
    
    88 : Node(id: 88,
              paragraphs: [""],
              image: nil,
              edges: [Edge(destinationId: 0,
                           prompt: "")],
              ending: nil),
    
    
    89 : Node(id: 89,
              paragraphs: [""],
              image: nil,
              edges: [Edge(destinationId: 0,
                           prompt: "")],
              ending: nil),
]
