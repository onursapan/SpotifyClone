//
//  AuthManager.swift
//  Spotify
//
//  Created by Onur Sapan on 6.07.2022.
//

import Foundation

final class AuthManager{
    static let shared = AuthManager()
    
    struct Constants {
        static let clientID = "8af1ad0ad6a84f5da966f03a75be3e52"
        static let clientSecret = "50db432abf3d4c729439e4f3b5fedaae"
    }
    
    public var signInUrl: URL? {
        let scopes = "user-read-private"
        let redirectURI = "https://iosacademy.io/"
        let base = "https://accounts.spotify.com/authorize"
        let string = "\(base)?response_type=code&client_id=\(Constants.clientID)&scope=\(scopes)&redirect_uri=\(redirectURI)&show_dialog=TRUE"
        return URL(string: string)
    }
    
    private init() {}
    
    var isSignedIn: Bool{
        return false
    }
    
    private var accessToken: String? {
        return nil
    }
    
    private var refreshToken: String? {
        return nil
    }
    
    private var tokenExpirationDate: Date? {
        return nil
    }
    
    private var shouldRefreshToken: Bool {
        return false
    }
    
    public func exchangeCodeForToken(
        code: String,
        completion: @escaping ((Bool) -> Void)
    ){
        //Get Token
        
    }
    
    public func refreshAccessToken()
    {
        
    }
    
    private func cacheToken()
    {
        
    }
    
}
