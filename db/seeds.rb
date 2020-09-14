
section_1 = Section.create(title: "Bank", icon: "bank")
section_2 = Section.create(title: "Party", icon: "party")
section_3 = Section.create(title: "Quick Responses", icon: "waving hand")
user_1 = User.create(firstName: "Bob", lastName: "Vance", email: "bob@email.com", password:"123", speed:1, voice: "Matt")
UserSection.create(user_id: user_1.id, section_id: section_1.id)
UserSection.create(user_id: user_1.id, section_id: section_2.id)
UserSection.create(user_id: user_1.id, section_id: section_3.id)

# Bank/Greetings
phrase_1 = Phrase.create(expression: "Hello", image: "hello", tags:["Greetings"], suggestions: ["how", "Joe", "Sage", "Jeremiah"])
phrase_2 = Phrase.create(expression: "Good Morning", image: "morning", tags:['Greetings'], suggestions: ["how", "Joe", "Sage", "Jeremiah"])
phrase_3 = Phrase.create(expression: "Good Afternoon", image: "afternoon", tags:['Greetings'], suggestions: ["how", "Joe", "Sage", "Jeremiah"])
phrase_4 = Phrase.create(expression: "Good Evening", image: "night", tags:['Greetings'], suggestions: ["how", "Joe", "Sage", "Jeremiah"])
#Common Phrases
phrase_6 = Phrase.create(expression: "Yes", image: "yes", tags:[''], suggestions: ["I", "sir", "are", "how", "what", "ma'am", "officer", "Joe", "Sage", "Jeremiah", "that", "can", "may"])
phrase_7 = Phrase.create(expression: "No", image: "no", tags:[''], suggestions: ["I", "sir", "ma'am", "officer", "Joe", "Sage", "Jeremiah", "that", "can", "may"])
phrase_8 = Phrase.create(expression: "Perfect", image: "perfect", tags:[''], suggestions: ["I", "can", "may", "are", "how", "what", "why"])
phrase_9 = Phrase.create(expression: "Great", image: "great", tags:[''], suggestions: ["I", "can", "may", "are", "how", "what", "why"])
phrase_10 = Phrase.create(expression: "Thanks", image: "thanks", tags:[''], suggestions: ["I", "can", "may", "are", "how", "what", "why", "officer", "Joe", "Sage", "Jeremiah", "that"])
#Bank/Transactions
phrase_11 = Phrase.create(expression: "I would like to make a withdrawl", image: "withdrawal", tags:['Transactions'], suggestions: ["sir", "ma'am", "Joe", "Sage", "Jeremiah", "Please"])
phrase_12 = Phrase.create(expression: "I would like to make a deposit", image: "deposit", tags:['Transactions'], suggestions: ["sir", "ma'am", "Joe", "Sage", "Jeremiah", "please"])
phrase_13 = Phrase.create(expression: "I would like to order a new ATM/Debit card", image: "card", tags:['Transactions'], suggestions: ["sir", "ma'am", "Joe", "Sage", "Jeremiah", "Please"])
phrase_14 = Phrase.create(expression: "I would like to open an account", image: "memo", tags:['Transactions'], suggestions: ["sir", "ma'am", "Joe", "Sage", "Jeremiah", "Please", "Under my name"])
phrase_15 = Phrase.create(expression: "I would like to pay my mortgage", image: "bank-note", tags:['Transactions'], suggestions: ["sir", "ma'am", "Joe", "Sage", "Jeremiah", "Please"])
#Bank/Goodbyes
phrase_16 = Phrase.create(expression: "Thanks, have a great day.", image: "great-day", tags:['Goodbyes'], suggestions: ["", ""])
phrase_17 = Phrase.create(expression: "Don't work too hard.", image: "x-hands", tags:['Goodbyes'], suggestions: ["", ""])
phrase_18 = Phrase.create(expression: "Thanks.", image: "thanks", tags:['Goodbyes'], suggestions: ["", ""])
#Party/Greetings
phrase_19 = Phrase.create(expression: "What's up y'all?", image: "sup", tags:['Greetings'], suggestions: ["Joe", "Sage", "Jeremiah"])
phrase_20 = Phrase.create(expression: "Yo", image: "yo", tags:['Greetings'], suggestions: ["Joe", "Sage", "Jeremiah", "What", "What's Up"])
phrase_21 = Phrase.create(expression: "What's good?", image: "hundred", tags:['Greetings'], suggestions: ["Homie"])
phrase_22 = Phrase.create(expression: "Hi Everyone, my name is Bob", image: "sup", tags:['Greetings'], suggestions: ["And I like the water!", "What is on the agenda for today?"])
#Party/Jokes
phrase_23 = Phrase.create(expression: "A priest, a rabbit, and a monk walk into a bar. And the Rabbit says I think that I might be a typo", image: "rabbit", tags:['Jokes'], suggestions: ["Sorry", "Get it?"])
phrase_24 = Phrase.create(expression: "A photon checks into a hotel and is asked if he needs any help with his luggage. He says, 'No, I'm traveling light.'", image: "joke-1" , tags:['Jokes'], suggestions: ["Get it?", "Sorry"])
phrase_25 = Phrase.create(expression: "Did you hear oxygen went on a date with potasium? ........ It went OK", image: "joke-2" , tags:['Jokes'], suggestions: ["Sorry", "Get it?"])
#Party/Joe
phrase_26 = Phrase.create(expression: "What's up Bean?", image: "sup", tags:['Joe Friend'], suggestions: ["Did you catch the Nuggets game earlier?"])
phrase_27 = Phrase.create(expression: "How are your dogs?", image: "dog", tags:['Joe Friend'], suggestions: ["Did you give them treats for me?", "Aww, I miss them!"])
phrase_28 = Phrase.create(expression: "Have you hear the new RTJ album?", image: "rtj" , tags:['Joe Friend'], suggestions: ["It's fantastic", "Yes, I love it too, have you noticed the smooth transitions of rock-jazz fusion into their slower, acoustic tonalities?"])
phrase_29 = Phrase.create(expression: "How's school going?", image: "school", tags:['Joe Friend'], suggestions: ["Well you still have to go, Joe!", "That's good, I'm glad you are studying!"])
phrase_30 = Phrase.create(expression: "Do you want a drink?", image: "drink", tags:['Joe Friend'], suggestions: ["Yeah, me neither", "Oh, nice choice!", "Make that two!"])
#Party/Goodbyes
phrase_31 = Phrase.create(expression: "Peace", image: "peace" , tags:['Goodbyes'], suggestions: ["homie"])
phrase_32 = Phrase.create(expression: "Seeya!", image: "wave" , tags:['Goodbyes'], suggestions: ["later", "never"])
phrase_33 = Phrase.create(expression: "Byeeeeeeeeee", image: "wave" , tags:['Goodbyes'], suggestions: ["Joe"])
phrase_34 = Phrase.create(expression: "Bye Felicia", image: "felicia" , tags:['Goodbyes'], suggestions: ["Have a nice night!"])
#Quick Responses
phrase_35 = Phrase.create(expression: "Help", image: "sos" , tags:[], suggestions:["I dropped my glasses!", "I need my medicine, now!", "me"])
phrase_36 = Phrase.create(expression: "Where is the restroom?", image: "toilet" , tags:[], suggestions: ["Could you repeat that, please?","Is there a code or key required?"])


SectionPhrase.create(section_id: section_1.id, phrase_id: phrase_1.id)
SectionPhrase.create(section_id: section_1.id, phrase_id: phrase_2.id)
SectionPhrase.create(section_id: section_1.id, phrase_id: phrase_3.id)
SectionPhrase.create(section_id: section_1.id, phrase_id: phrase_4.id)

SectionPhrase.create(section_id: section_1.id, phrase_id: phrase_6.id)
SectionPhrase.create(section_id: section_1.id, phrase_id: phrase_7.id)
SectionPhrase.create(section_id: section_1.id, phrase_id: phrase_8.id)
SectionPhrase.create(section_id: section_1.id, phrase_id: phrase_9.id)
SectionPhrase.create(section_id: section_1.id, phrase_id: phrase_10.id)

SectionPhrase.create(section_id: section_2.id, phrase_id: phrase_6.id)
SectionPhrase.create(section_id: section_2.id, phrase_id: phrase_7.id)
SectionPhrase.create(section_id: section_2.id, phrase_id: phrase_8.id)
SectionPhrase.create(section_id: section_2.id, phrase_id: phrase_9.id)
SectionPhrase.create(section_id: section_2.id, phrase_id: phrase_10.id)

SectionPhrase.create(section_id: section_3.id, phrase_id: phrase_6.id)
SectionPhrase.create(section_id: section_3.id, phrase_id: phrase_7.id)
SectionPhrase.create(section_id: section_3.id, phrase_id: phrase_8.id)
SectionPhrase.create(section_id: section_3.id, phrase_id: phrase_9.id)
SectionPhrase.create(section_id: section_3.id, phrase_id: phrase_10.id)

SectionPhrase.create(section_id: section_1.id, phrase_id: phrase_11.id)
SectionPhrase.create(section_id: section_1.id, phrase_id: phrase_12.id)
SectionPhrase.create(section_id: section_1.id, phrase_id: phrase_13.id)
SectionPhrase.create(section_id: section_1.id, phrase_id: phrase_14.id)
SectionPhrase.create(section_id: section_1.id, phrase_id: phrase_15.id)

SectionPhrase.create(section_id: section_1.id, phrase_id: phrase_16.id)
SectionPhrase.create(section_id: section_1.id, phrase_id: phrase_17.id)
SectionPhrase.create(section_id: section_1.id, phrase_id: phrase_18.id)

SectionPhrase.create(section_id: section_2.id, phrase_id: phrase_19.id)
SectionPhrase.create(section_id: section_2.id, phrase_id: phrase_20.id)
SectionPhrase.create(section_id: section_2.id, phrase_id: phrase_21.id)
SectionPhrase.create(section_id: section_2.id, phrase_id: phrase_22.id)

SectionPhrase.create(section_id: section_2.id, phrase_id: phrase_23.id)
SectionPhrase.create(section_id: section_2.id, phrase_id: phrase_24.id)
SectionPhrase.create(section_id: section_2.id, phrase_id: phrase_25.id)

SectionPhrase.create(section_id: section_2.id, phrase_id: phrase_26.id)
SectionPhrase.create(section_id: section_2.id, phrase_id: phrase_27.id)
SectionPhrase.create(section_id: section_2.id, phrase_id: phrase_28.id)
SectionPhrase.create(section_id: section_2.id, phrase_id: phrase_29.id)
SectionPhrase.create(section_id: section_2.id, phrase_id: phrase_30.id)

SectionPhrase.create(section_id: section_2.id, phrase_id: phrase_31.id)
SectionPhrase.create(section_id: section_2.id, phrase_id: phrase_32.id)
SectionPhrase.create(section_id: section_2.id, phrase_id: phrase_33.id)
SectionPhrase.create(section_id: section_2.id, phrase_id: phrase_34.id)

SectionPhrase.create(section_id: section_3.id, phrase_id: phrase_35.id)
SectionPhrase.create(section_id: section_3.id, phrase_id: phrase_36.id)
