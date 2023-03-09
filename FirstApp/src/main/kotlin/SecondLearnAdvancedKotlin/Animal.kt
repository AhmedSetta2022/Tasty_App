open class Animal {

    open fun play(){
        println("Default")
    }

    open fun sleep(){
        println("Default")
    }

    open fun run(){
        println("Default")
    }
}

fun main() {
 var mycat = Cat("Fluffy")
    mycat.run()
    mycat.play()
    mycat.sleep()
 var mydog = Dog("LuckyBoy")
    mydog.run()
    mydog.play()
    mydog.sleep()
}