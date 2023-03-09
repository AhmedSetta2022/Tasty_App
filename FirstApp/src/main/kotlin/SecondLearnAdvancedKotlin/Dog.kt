class Dog:Animal {
    var name : String?=null
    constructor(){}
    constructor(p_name:String){
        this.name=p_name
        println("Name is :${this.name}")
    }
    override fun play() {
        println("my ${this.name} is playing")
    }
    override fun sleep() {
        println("my ${this.name} is sleeping")
    }
    override fun run() {
        println("my ${this.name} is running")
    }
}