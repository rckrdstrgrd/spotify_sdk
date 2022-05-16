import SpotifyiOS

class SessionHandler:NSObject, SPTSessionManagerDelegate {
    
    var didInitiateSession: (SPTSession?) -> ()
    var didFailSession: (Error?) -> ()

    func sessionManager(manager: SPTSessionManager, didInitiate session: SPTSession) {
        didInitiateSession(session)
    }
    
    func sessionManager(manager: SPTSessionManager, didFailWith error: Error) {
        didFailSession(error)
    }
    
    init(
        didInitiateSession:@escaping (SPTSession?) -> (),
        didFailSession:@escaping (Error?) -> ()
        ) {
            self.didInitiateSession = didInitiateSession
            self.didFailSession = didFailSession
        }
}
