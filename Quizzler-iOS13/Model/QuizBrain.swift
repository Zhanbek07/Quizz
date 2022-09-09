
import Foundation

struct QuizBrain {
    
    var questionNumber = 0
    var score = 0
    
    let quiz = [
        Question(q: "Кровь слизняка зеленая?", a: "Верно"),
        Question(q: "Примерно чертверть человеческих костей находится в ногах.", a: "Верно"),
        Question(q: "Общая площадь поверхности легких человека приблизительно 70 квадратных метров.", a: "Верно"),
        Question(q: "В West Virginia, США, если вы случайно собьете животное, вы имеете право сьесть его", a: "Верно"),
        Question(q: "В Лондоне, Великобритания, если вам случится умереть в здании парламента, технически вы имеете право на государственные похороны, потому что это здание считается слишком священным местом.", a: "Неверно"),
        Question(q: "В Португалии запрещено мочиться в океан.", a: "Верно"),
        Question(q: "Вы можете вести корову вниз по лестнице, но не вверх по лестнице.", a: "Неверно"),
        Question(q: "Первоначально Google назывался Backrub..", a: "Верно"),
        Question(q: "Девичья фамилия матери Базза Олдрина была «Мун».", a: "Верно"),
        Question(q: "Самый громкий звук, издаваемый любым животным, составляет 188 децибел. Это животное — африканский слон.", a: "Неверно"),
        Question(q: "Ни один квадратный кусок сухой бумаги нельзя сложить пополам более 7 раз.", a: "Неверно"),
        Question(q: "Шоколад влияет на сердце и нервную систему собаки, нескольких унций достаточно, чтобы убить маленькую собаку.", a: "Верно")
    ]
    
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    
    func getProgress() -> Float {
        return Float(questionNumber) / Float(quiz.count)
    }
    
    mutating func getScore() -> Int {
        return score
    }
    
     mutating func nextQuestion() {
        
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
        }
    }
    
    mutating func checkAnswer(userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNumber].answer {
            score += 1
            return true
        } else {
            return false
        }
    }
}

