# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.new(email:'a@a.com', password: '123123', name:'유경', phone:'010-1234-1234')
#user.skip_confirmation!
user.save

user = User.new(email:'b@b.com', password: '123123', name:'유재석', phone:'010-1234-1234')
#user.skip_confirmation!
user.save

Question.create( content: "ruby on rails에서 검색 기능은 어떻게 만드나요?", user_id:1)

Answer.create( content: "controller에 액션을 만들거나 스핑크스 잼을 씁니다", user_id:2, question_id:1)

Comment.create( content: "스핑크스 잼 외에 다른 잼은 없나요?", user_id:1, answer_id:1)

social = Major.create(:title => '사회과학대학')
Major.create(title: '경제학', parent: social)
Major.create(title: '심리학', parent: social)
Major.create(title: '사회학', parent: social)
Major.create(title: '문헌정보학', parent: social)
Major.create(title: '정치외교학', parent: social)
Major.create(title: '사회복지학', parent: social)
Major.create(title: '소비자학', parent: social)

