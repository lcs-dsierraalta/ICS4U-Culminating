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
    let edges: [Int]                  //A list of id's of nodes this node is connected to
}
