package SecondLearnAdvancedKotlin

  class get {
    private var name :String? = null

    fun setName(p_name:String?){
        this.name = p_name
    }

    fun getName():String?{
     return this.name
 }
}
fun main(){
    var x = get()
    x.setName("ahmed")
    var y = x.getName()
    println(y)
}