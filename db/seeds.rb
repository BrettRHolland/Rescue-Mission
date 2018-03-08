# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Question.delete_all
Answer.delete_all
Question.create(title: "A small river named Duden flows by their place and supplies it with the necessary regelialia?", description: "Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.")
Question.create(title: "She packed her seven versalia, put her initial into the belt and made herself on the way?", description: "When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane.")
Question.create(title: "I am alone, and feel the charm of existence in this spot, which was created for the bliss of souls like mine?", description: "I should be incapable of drawing a single stroke at the present moment; and yet I feel that I never was a greater artist than now.")
Answer.create(question_id: 1, description: "Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.")
Answer.create(question_id: 1, description: "But nothing the copy said could convince her and so it didn’t take long until a few insidious Copy Writers ambushed her, made her drunk with Longe and Parole and dragged her into their agency, where they abused her for their projects again and again.")
Answer.create(question_id: 2, description: "But nothing the copy said could convince her and so it didn’t take long until a few insidious Copy Writers ambushed her, made her drunk with Longe and Parole and dragged her into their agency, where they abused her for their projects again and again. And if she hasn’t been rewritten, then they are still using her.")
Answer.create(question_id: 2, description: "I am so happy, my dear friend, so absorbed in the exquisite sense of mere tranquil existence, that I neglect my talents.")
Answer.create(question_id: 3, description: "A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart.")
