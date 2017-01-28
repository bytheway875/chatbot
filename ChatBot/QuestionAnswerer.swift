
struct QuestionAnswerer {
    
    func isAGreeting(_ question: String) -> Bool {
        let greetings = ["hello", "hi", "hey", "sup"]
        for greeting in greetings {
            if question.hasPrefix(greeting){
                print("Got here")
                return true
            }
        }
        return false
    }
    
    func responseToGreeting() -> String {
        return "Hi! What can I help you with?"
    }
    
    func responseToApple() -> String {
        return "I love apples... or are you talking about computers?"
    }
    
    func genericResponse(_ question: String) -> String {
        let defaultNumber = question.characters.count % 3
        
        if defaultNumber == 0 {
            return "That really depends"
        } else if defaultNumber == 1 {
            return "I think so, yes"
        } else {
            return "Ask me again tomorrow"
        }
    }
    
    func responseToHelp() -> String {
        return "I feel like you're asking for help, but I'm not sure I can... ask me something more specific."
    }
    
    func responseTo(question: String) -> String {
        let question = question.lowercased();
        
        if isAGreeting(question){
            return responseToGreeting()
        } else if question == "where are the cookies?"{
            return "In the cookie jar!"
            
        } else if question.contains("where"){
            return "To the north!"
        } else if question.contains("apple") {
            return responseToApple()
        } else if question.contains("help"){
            return responseToHelp()
        } else {
            return genericResponse(question)
        }
    }
    
    
    
    
    
    
}
