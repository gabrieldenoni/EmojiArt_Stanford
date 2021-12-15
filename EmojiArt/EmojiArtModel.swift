//
//  EmojiArtModel.swift
//  EmojiArt
//
//  Created by Gabriel on 12/15/21.
//

import Foundation

struct EmojiArtModel: Codable {
  var url: URL
  var emojis = [EmojiInfo]()

  struct EmojiInfo: Codable {
    let x: Int
    let y: Int
    let text: String
    let size: Int
  }

  var json: Data? {
    return try? JSONEncoder().encode(self)
  }

  init(url: URL, emojis: [EmojiInfo]) {
    self.url = url
    self.emojis = emojis
  }
}