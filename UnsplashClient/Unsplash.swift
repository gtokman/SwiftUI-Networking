// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let unsplash = try Unsplash(json)

import Foundation

// MARK: - UnsplashElement
struct UnsplashElement: Codable {
    let id: String
    let createdAt, updatedAt: String?
    let width, height: Int
    let color: String
    let unsplashDescription: String?
    let altDescription: String?
    let urls: Urls
    let links: UnsplashLinks
    let categories: [JSONAny]?
    let sponsored: Bool?
    let sponsoredBy: User?
    let sponsoredImpressionsID: String?
    let likes: Int
    let likedByUser: Bool?
    let currentUserCollections: [JSONAny]?
    let user: User?
    let sponsorship: Sponsorship?
}

// MARK: UnsplashElement convenience initializers and mutators

extension UnsplashElement {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(UnsplashElement.self, from: data)
    }
    
    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }
    
    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }
    
    func with(
        id: String? = nil,
        createdAt: String? = nil,
        updatedAt: String? = nil,
        width: Int? = nil,
        height: Int? = nil,
        color: String? = nil,
        unsplashDescription: String? = nil,
        altDescription: String? = nil,
        urls: Urls? = nil,
        links: UnsplashLinks? = nil,
        categories: [JSONAny]? = nil,
        sponsored: Bool? = nil,
        sponsoredBy: User? = nil,
        sponsoredImpressionsID: String?? = nil,
        likes: Int? = nil,
        likedByUser: Bool? = nil,
        currentUserCollections: [JSONAny]? = nil,
        user: User? = nil,
        sponsorship: Sponsorship?? = nil
        ) -> UnsplashElement {
        return UnsplashElement(
            id: id ?? self.id,
            createdAt: createdAt ?? self.createdAt,
            updatedAt: updatedAt ?? self.updatedAt,
            width: width ?? self.width,
            height: height ?? self.height,
            color: color ?? self.color,
            unsplashDescription: unsplashDescription ?? self.unsplashDescription,
            altDescription: altDescription ?? self.altDescription,
            urls: urls ?? self.urls,
            links: links ?? self.links,
            categories: categories ?? self.categories,
            sponsored: sponsored ?? self.sponsored,
            sponsoredBy: sponsoredBy ?? self.sponsoredBy,
            sponsoredImpressionsID: sponsoredImpressionsID ?? self.sponsoredImpressionsID,
            likes: likes ?? self.likes,
            likedByUser: likedByUser ?? self.likedByUser,
            currentUserCollections: currentUserCollections ?? self.currentUserCollections,
            user: user ?? self.user,
            sponsorship: sponsorship ?? self.sponsorship
        )
    }
    
    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }
    
    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - UnsplashLinks
struct UnsplashLinks: Codable {
    let linksSelf, html, download, downloadLocation: String?
}

// MARK: UnsplashLinks convenience initializers and mutators

extension UnsplashLinks {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(UnsplashLinks.self, from: data)
    }
    
    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }
    
    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }
    
    func with(
        linksSelf: String? = nil,
        html: String? = nil,
        download: String? = nil,
        downloadLocation: String? = nil
        ) -> UnsplashLinks {
        return UnsplashLinks(
            linksSelf: linksSelf ?? self.linksSelf,
            html: html ?? self.html,
            download: download ?? self.download,
            downloadLocation: downloadLocation ?? self.downloadLocation
        )
    }
    
    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }
    
    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - User
struct User: Codable {
    let id: String
    let updatedAt: String?
    let username, name, firstName: String?
    let lastName, twitterUsername: String?
    let portfolioURL: String?
    let bio, location: String?
    let links: UserLinks
    let profileImage: ProfileImage?
    let instagramUsername: String?
    let totalCollections, totalLikes, totalPhotos: Int?
    let acceptedTos: Bool?
}

// MARK: User convenience initializers and mutators

extension User {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(User.self, from: data)
    }
    
    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }
    
    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }
    
    func with(
        id: String? = nil,
        updatedAt: String? = nil,
        username: String? = nil,
        name: String? = nil,
        firstName: String? = nil,
        lastName: String?? = nil,
        twitterUsername: String?? = nil,
        portfolioURL: String?? = nil,
        bio: String?? = nil,
        location: String?? = nil,
        links: UserLinks? = nil,
        profileImage: ProfileImage? = nil,
        instagramUsername: String?? = nil,
        totalCollections: Int? = nil,
        totalLikes: Int? = nil,
        totalPhotos: Int? = nil,
        acceptedTos: Bool? = nil
        ) -> User {
        return User(
            id: id ?? self.id,
            updatedAt: updatedAt ?? self.updatedAt,
            username: username ?? self.username,
            name: name ?? self.name,
            firstName: firstName ?? self.firstName,
            lastName: lastName ?? self.lastName,
            twitterUsername: twitterUsername ?? self.twitterUsername,
            portfolioURL: portfolioURL ?? self.portfolioURL,
            bio: bio ?? self.bio,
            location: location ?? self.location,
            links: links ?? self.links,
            profileImage: profileImage ?? self.profileImage,
            instagramUsername: instagramUsername ?? self.instagramUsername,
            totalCollections: totalCollections ?? self.totalCollections,
            totalLikes: totalLikes ?? self.totalLikes,
            totalPhotos: totalPhotos ?? self.totalPhotos,
            acceptedTos: acceptedTos ?? self.acceptedTos
        )
    }
    
    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }
    
    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - UserLinks
struct UserLinks: Codable {
    let linksSelf, html, photos, likes: String?
    let portfolio, following, followers: String
}

// MARK: UserLinks convenience initializers and mutators

extension UserLinks {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(UserLinks.self, from: data)
    }
    
    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }
    
    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }
    
    func with(
        linksSelf: String? = nil,
        html: String? = nil,
        photos: String? = nil,
        likes: String? = nil,
        portfolio: String? = nil,
        following: String? = nil,
        followers: String? = nil
        ) -> UserLinks {
        return UserLinks(
            linksSelf: linksSelf ?? self.linksSelf,
            html: html ?? self.html,
            photos: photos ?? self.photos,
            likes: likes ?? self.likes,
            portfolio: portfolio ?? self.portfolio,
            following: following ?? self.following,
            followers: followers ?? self.followers
        )
    }
    
    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }
    
    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - ProfileImage
struct ProfileImage: Codable {
    let small, medium, large: String
}

// MARK: ProfileImage convenience initializers and mutators

extension ProfileImage {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(ProfileImage.self, from: data)
    }
    
    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }
    
    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }
    
    func with(
        small: String? = nil,
        medium: String? = nil,
        large: String? = nil
        ) -> ProfileImage {
        return ProfileImage(
            small: small ?? self.small,
            medium: medium ?? self.medium,
            large: large ?? self.large
        )
    }
    
    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }
    
    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - Sponsorship
struct Sponsorship: Codable {
    let impressionsID, tagline: String?
    let sponsor: User?
}

// MARK: Sponsorship convenience initializers and mutators

extension Sponsorship {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(Sponsorship.self, from: data)
    }
    
    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }
    
    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }
    
    func with(
        impressionsID: String? = nil,
        tagline: String? = nil,
        sponsor: User? = nil
        ) -> Sponsorship {
        return Sponsorship(
            impressionsID: impressionsID ?? self.impressionsID,
            tagline: tagline ?? self.tagline,
            sponsor: sponsor ?? self.sponsor
        )
    }
    
    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }
    
    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - Urls
struct Urls: Codable {
    let raw, full, regular, small: String
    let thumb: String
}

// MARK: Urls convenience initializers and mutators

extension Urls {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(Urls.self, from: data)
    }
    
    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }
    
    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }
    
    func with(
        raw: String? = nil,
        full: String? = nil,
        regular: String? = nil,
        small: String? = nil,
        thumb: String? = nil
        ) -> Urls {
        return Urls(
            raw: raw ?? self.raw,
            full: full ?? self.full,
            regular: regular ?? self.regular,
            small: small ?? self.small,
            thumb: thumb ?? self.thumb
        )
    }
    
    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }
    
    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

typealias Unsplash = [UnsplashElement]

extension Array where Element == Unsplash.Element {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(Unsplash.self, from: data)
    }
    
    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }
    
    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }
    
    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }
    
    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - Helper functions for creating encoders and decoders

func newJSONDecoder() -> JSONDecoder {
    let decoder = JSONDecoder()
    decoder.keyDecodingStrategy = .convertFromSnakeCase
    if #available(iOS 10.0, OSX 10.12, tvOS 10.0, watchOS 3.0, *) {
        decoder.dateDecodingStrategy = .iso8601
    }
    return decoder
}

func newJSONEncoder() -> JSONEncoder {
    let encoder = JSONEncoder()
    if #available(iOS 10.0, OSX 10.12, tvOS 10.0, watchOS 3.0, *) {
        encoder.dateEncodingStrategy = .iso8601
    }
    return encoder
}

// MARK: - Encode/decode helpers

class JSONNull: Codable, Hashable {
    
    public static func == (lhs: JSONNull, rhs: JSONNull) -> Bool {
        return true
    }
    
    public var hashValue: Int {
        return 0
    }
    
    public init() {}
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if !container.decodeNil() {
            throw DecodingError.typeMismatch(JSONNull.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for JSONNull"))
        }
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encodeNil()
    }
}

class JSONCodingKey: CodingKey {
    let key: String
    
    required init?(intValue: Int) {
        return nil
    }
    
    required init?(stringValue: String) {
        key = stringValue
    }
    
    var intValue: Int? {
        return nil
    }
    
    var stringValue: String {
        return key
    }
}

class JSONAny: Codable {
    
    let value: Any
    
    static func decodingError(forCodingPath codingPath: [CodingKey]) -> DecodingError {
        let context = DecodingError.Context(codingPath: codingPath, debugDescription: "Cannot decode JSONAny")
        return DecodingError.typeMismatch(JSONAny.self, context)
    }
    
    static func encodingError(forValue value: Any, codingPath: [CodingKey]) -> EncodingError {
        let context = EncodingError.Context(codingPath: codingPath, debugDescription: "Cannot encode JSONAny")
        return EncodingError.invalidValue(value, context)
    }
    
    static func decode(from container: SingleValueDecodingContainer) throws -> Any {
        if let value = try? container.decode(Bool.self) {
            return value
        }
        if let value = try? container.decode(Int64.self) {
            return value
        }
        if let value = try? container.decode(Double.self) {
            return value
        }
        if let value = try? container.decode(String.self) {
            return value
        }
        if container.decodeNil() {
            return JSONNull()
        }
        throw decodingError(forCodingPath: container.codingPath)
    }
    
    static func decode(from container: inout UnkeyedDecodingContainer) throws -> Any {
        if let value = try? container.decode(Bool.self) {
            return value
        }
        if let value = try? container.decode(Int64.self) {
            return value
        }
        if let value = try? container.decode(Double.self) {
            return value
        }
        if let value = try? container.decode(String.self) {
            return value
        }
        if let value = try? container.decodeNil() {
            if value {
                return JSONNull()
            }
        }
        if var container = try? container.nestedUnkeyedContainer() {
            return try decodeArray(from: &container)
        }
        if var container = try? container.nestedContainer(keyedBy: JSONCodingKey.self) {
            return try decodeDictionary(from: &container)
        }
        throw decodingError(forCodingPath: container.codingPath)
    }
    
    static func decode(from container: inout KeyedDecodingContainer<JSONCodingKey>, forKey key: JSONCodingKey) throws -> Any {
        if let value = try? container.decode(Bool.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(Int64.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(Double.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(String.self, forKey: key) {
            return value
        }
        if let value = try? container.decodeNil(forKey: key) {
            if value {
                return JSONNull()
            }
        }
        if var container = try? container.nestedUnkeyedContainer(forKey: key) {
            return try decodeArray(from: &container)
        }
        if var container = try? container.nestedContainer(keyedBy: JSONCodingKey.self, forKey: key) {
            return try decodeDictionary(from: &container)
        }
        throw decodingError(forCodingPath: container.codingPath)
    }
    
    static func decodeArray(from container: inout UnkeyedDecodingContainer) throws -> [Any] {
        var arr: [Any] = []
        while !container.isAtEnd {
            let value = try decode(from: &container)
            arr.append(value)
        }
        return arr
    }
    
    static func decodeDictionary(from container: inout KeyedDecodingContainer<JSONCodingKey>) throws -> [String: Any] {
        var dict = [String: Any]()
        for key in container.allKeys {
            let value = try decode(from: &container, forKey: key)
            dict[key.stringValue] = value
        }
        return dict
    }
    
    static func encode(to container: inout UnkeyedEncodingContainer, array: [Any]) throws {
        for value in array {
            if let value = value as? Bool {
                try container.encode(value)
            } else if let value = value as? Int64 {
                try container.encode(value)
            } else if let value = value as? Double {
                try container.encode(value)
            } else if let value = value as? String {
                try container.encode(value)
            } else if value is JSONNull {
                try container.encodeNil()
            } else if let value = value as? [Any] {
                var container = container.nestedUnkeyedContainer()
                try encode(to: &container, array: value)
            } else if let value = value as? [String: Any] {
                var container = container.nestedContainer(keyedBy: JSONCodingKey.self)
                try encode(to: &container, dictionary: value)
            } else {
                throw encodingError(forValue: value, codingPath: container.codingPath)
            }
        }
    }
    
    static func encode(to container: inout KeyedEncodingContainer<JSONCodingKey>, dictionary: [String: Any]) throws {
        for (key, value) in dictionary {
            let key = JSONCodingKey(stringValue: key)!
            if let value = value as? Bool {
                try container.encode(value, forKey: key)
            } else if let value = value as? Int64 {
                try container.encode(value, forKey: key)
            } else if let value = value as? Double {
                try container.encode(value, forKey: key)
            } else if let value = value as? String {
                try container.encode(value, forKey: key)
            } else if value is JSONNull {
                try container.encodeNil(forKey: key)
            } else if let value = value as? [Any] {
                var container = container.nestedUnkeyedContainer(forKey: key)
                try encode(to: &container, array: value)
            } else if let value = value as? [String: Any] {
                var container = container.nestedContainer(keyedBy: JSONCodingKey.self, forKey: key)
                try encode(to: &container, dictionary: value)
            } else {
                throw encodingError(forValue: value, codingPath: container.codingPath)
            }
        }
    }
    
    static func encode(to container: inout SingleValueEncodingContainer, value: Any) throws {
        if let value = value as? Bool {
            try container.encode(value)
        } else if let value = value as? Int64 {
            try container.encode(value)
        } else if let value = value as? Double {
            try container.encode(value)
        } else if let value = value as? String {
            try container.encode(value)
        } else if value is JSONNull {
            try container.encodeNil()
        } else {
            throw encodingError(forValue: value, codingPath: container.codingPath)
        }
    }
    
    public required init(from decoder: Decoder) throws {
        if var arrayContainer = try? decoder.unkeyedContainer() {
            self.value = try JSONAny.decodeArray(from: &arrayContainer)
        } else if var container = try? decoder.container(keyedBy: JSONCodingKey.self) {
            self.value = try JSONAny.decodeDictionary(from: &container)
        } else {
            let container = try decoder.singleValueContainer()
            self.value = try JSONAny.decode(from: container)
        }
    }
    
    public func encode(to encoder: Encoder) throws {
        if let arr = self.value as? [Any] {
            var container = encoder.unkeyedContainer()
            try JSONAny.encode(to: &container, array: arr)
        } else if let dict = self.value as? [String: Any] {
            var container = encoder.container(keyedBy: JSONCodingKey.self)
            try JSONAny.encode(to: &container, dictionary: dict)
        } else {
            var container = encoder.singleValueContainer()
            try JSONAny.encode(to: &container, value: self.value)
        }
    }
}

