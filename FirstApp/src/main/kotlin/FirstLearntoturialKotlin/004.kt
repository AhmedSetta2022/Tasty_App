class USER(var name :String=readLine().toString(), var age :Int = readLine()!!.toInt(), var adress :String = readLine().toString()){

    fun speak(){
        println("Hello , ${this.name} to our world !")
        println("my age is ${this.age}")
        println(" ur login ID ${this.adress} ")
    }
}
fun main(){
    var user1=USER()
    user1.speak()
}