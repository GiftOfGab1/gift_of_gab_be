# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

section_1 = Section.create(title: "Bank", icon: "waving hand")
section_2 = Section.create(title: "Party", icon: "waving hand")
section_3 = Section.create(title: "Quick Responses", icon: "waving hand")
user_1 = User.create(firstName: "Bob", lastName: "Vance", email: "bob@email.com", password:"123", speed:1, voice: "Matt")
UserSection.create(user_id: user_1.id, section_id: section_1.id)
UserSection.create(user_id: user_1.id, section_id: section_2.id)

# Bank/Greetings
phrase_1 = Phrase.create(expression: "Hello", image: "")
phrase_2 = Phrase.create(expression: "Hello", image: "", tags:["Greetings"])
phrase_3 = Phrase.create(expression: "Good Morning", image: "", tags:['Greetings'])
phrase_4 = Phrase.create(expression: "Good Afternoon", image: "", tags:['Greetings'])
phrase_5 = Phrase.create(expression: "Good Evening", image: "", tags:['Greetings'])
#Common Phrases
phrase_6 = Phrase.create(expression: "Yes", image: "", tags:[''])
phrase_7 = Phrase.create(expression: "No", image: "", tags:[''])
phrase_8 = Phrase.create(expression: "Perfect", image: "", tags:[''])
phrase_9 = Phrase.create(expression: "Great", image: "", tags:[''])
phrase_10 = Phrase.create(expression: "Thanks", image: "", tags:[''])
#Bank/Transactions
phrase_11 = Phrase.create(expression: "I would like to make a withdrawl", image: "", tags:['Transactions'])
phrase_12 = Phrase.create(expression: "I would like to make a deposit", image: "", tags:['Transactions'])
phrase_13 = Phrase.create(expression: "I would like to order a new ATM/Debit card", image: "", tags:['Transactions'])
phrase_14 = Phrase.create(expression: "I would like to open an account", image: "", tags:['Transactions'])
phrase_15 = Phrase.create(expression: "I would like to pay my mortgage", image: "", tags:['Transactions'])
#Bank/Goodbyes
phrase_16 = Phrase.create(expression: "Thanks, have a great day.", image: "", tags:['Goodbyes'])
phrase_17 = Phrase.create(expression: "Don't work too hard.", image: "", tags:['Goodbyes'])
phrase_18 = Phrase.create(expression: "Thanks.", image: "", tags:['Goodbyes'])
#Party/Greetings
phrase_19 = Phrase.create(expression: "What's up y'all?", image: "", tags:['Greetings'])
phrase_20 = Phrase.create(expression: "Yo", image: "", tags:['Greetings'])
phrase_21 = Phrase.create(expression: "What's good?", image: "", tags:['Greetings'])
phrase_22 = Phrase.create(expression: "Hi Everyone, my name is Bob", image: "", tags:['Greetings'])
#Party/Jokes
phrase_23 = Phrase.create(expression: "A priest, a rabbit, and a monk walk into a bar. And the Rabbit says I think that I might be a typo", image: "", tags:['Jokes'])
phrase_24 = Phrase.create(expression: "A photon checks into a hotel and is asked if he needs any help with his luggage. He says, 'No, I'm traveling light.'", image: "" , tags:['Jokes'])
phrase_25 = Phrase.create(expression: "Did you hear oxygen went on a date with potasium? ........ It went OK", image: "" , tags:['Jokes'])
#Party/Joe
phrase_26 = Phrase.create(expression: "What's up Bean?", image: "" , tags:['Joe Friend'])
phrase_27 = Phrase.create(expression: "How are your dogs?", image: "" , tags:['Joe Friend'])
phrase_28 = Phrase.create(expression: "Have you hear the new RTJ album?", image: "" , tags:['Joe Friend'])
phrase_29 = Phrase.create(expression: "How's school going?", image: "" , tags:['Joe Friend'])
phrase_30 = Phrase.create(expression: "Do you want a drink?", image: "" , tags:['Joe Friend'])
#Party/Goodbyes
phrase_31 = Phrase.create(expression: "Peace", image: "" , tags:['Goodbyes'])
phrase_32 = Phrase.create(expression: "Seeya!", image: "" , tags:['Goodbyes'])
phrase_33 = Phrase.create(expression: "Byeeeeeeeeee", image: "" , tags:['Goodbyes'])
phrase_34 = Phrase.create(expression: "Bye Felicia", image: "" , tags:['Goodbyes'])
#Quick Responses
phrase_35 = Phrase.create(expression: "Help", image: "" , tags:[])
phrase_36 = Phrase.create(expression: "Where is the restroom?", image: "" , tags:[])


SectionPhrase.create(section_id: section_1.id, phrase_id: phrase_2.id)
SectionPhrase.create(section_id: section_1.id, phrase_id: phrase_3.id)
SectionPhrase.create(section_id: section_1.id, phrase_id: phrase_4.id)
SectionPhrase.create(section_id: section_1.id, phrase_id: phrase_5.id)

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