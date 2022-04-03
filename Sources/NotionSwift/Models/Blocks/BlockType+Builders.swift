//
//  Created by Wojciech Chojnacki on 22/03/2022.
//

import Foundation

public extension BlockType {

    static func paragraph(_ richText: [RichText], children: [BlockType]? = nil) -> BlockType {
        return .paragraph(.init(richText: richText, children: children))
    }
    
    static func heading1(_ richText: [RichText]) -> Self {
        return .heading1(.init(richText: richText))
    }

    static func heading2(_ richText: [RichText]) -> Self {
        return .heading2(.init(richText: richText))
    }

    static func heading3(_ richText: [RichText]) -> Self {
        return .heading3(.init(richText: richText))
    }

    static func bulletedListItem(
        _ richText: [RichText],
        children: [BlockType]? = nil
    ) -> Self {
        return .bulletedListItem(.init(richText: richText, children: children))
    }

    static func numberedListItem(
        _ richText: [RichText],
        children: [BlockType]? = nil
    ) -> Self {
        return .numberedListItem(.init(richText: richText, children: children))
    }

    static func toDo(
        _ richText: [RichText],
        checked: Bool? = nil,
        children: [BlockType]? = nil
    ) -> Self {
        return .toDo(.init(richText: richText, checked: checked, children: children))
    }

    static func toggle(
        _ richText: [RichText],
        children: [BlockType]? = nil
    ) -> Self {
        return .toggle(.init(richText: richText, children: children))
    }

    static func code(
        _ richText: [RichText],
        language: String? = nil
    ) -> Self {
        return .code(.init(richText: richText, language: language))
    }

    static func childPage(_ title: String) -> Self {
        return .childPage(.init(title: title))
    }

    static func childDatabase(_ title: String) -> Self {
        return .childPage(.init(title: title))
    }

    static func embed(url: String, caption: [RichText]) -> Self {
        return .embed(.init(url: url, caption: caption))
    }

    static func callout(
        _ richText: [RichText],
        children: [BlockType]? = nil,
        icon: IconFile? = nil
    ) -> Self {
        return .callout(.init(richText: richText, children: children, icon: icon))
    }

    static func quote(
        _ richText: [RichText],
        children: [BlockType]? = nil
    ) -> Self {
        return .quote(.init(richText: richText, children: children))
    }

    static func video(file: FileFile, caption: [RichText] = []) -> Self {
        return .video(.init(file: file, caption: caption))
    }

    static func audio(file: FileFile, caption: [RichText] = []) -> Self {
        return .audio(.init(file: file, caption: caption))
    }

    static func image(file: FileFile, caption: [RichText] = []) -> Self {
        return .image(.init(file: file, caption: caption))
    }

    static func file(file: FileFile, caption: [RichText] = []) -> Self {
        return .file(.init(file: file, caption: caption))
    }

    static func pdf(file: FileFile, caption: [RichText] = []) -> Self {
        return .pdf(.init(file: file, caption: caption))
    }

    static func bookmark(url: String, caption: [RichText] = []) -> Self {
        return .bookmark(.init(url: url, caption: caption))
    }

    static func equation(expression: String) -> Self {
        return .equation(.init(expression: expression))
    }
    
    static func template(
        _ richText: [RichText],
        children: [BlockType]? = nil
    ) -> Self {
        return .template(.init(richText: richText, children: children))
    }
}