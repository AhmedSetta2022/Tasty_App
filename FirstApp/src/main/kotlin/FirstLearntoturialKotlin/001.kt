fun main (){
    var x : Int = 1
    var y : Int = 1
    var w = x + y
    println(w)

    for (i:Int in 1..5){
        for (k:Int in 1..15)
            print("*")
        println("")
    }
    if(x==y){
        println("x equal to y")
    } else {
       println("x not equal to y")
    }
}
