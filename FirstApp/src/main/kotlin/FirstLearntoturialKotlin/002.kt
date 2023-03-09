class B(){
    fun weekdays (a : Int){
        when(a){
            1-> println("sunday")
            2-> println("monday")
            3-> println("Tuesday")
            4-> println("wednsday")
            5-> println("thursday")
            6-> println("Friday")
            7-> println("saturday")
        }
    }
}
fun main (){
 var x = B()
    x.weekdays(5)
}