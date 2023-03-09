package `interface`

abstract class Circle : Interface1 {
    private var Radius : Double ? = null
    constructor(p_Raduis : Double){
        this.Radius = p_Raduis
    }

    override fun Drawing(color: String) {
        println(" color is ${this.color}")
    }

    override fun getArray():Double {
        return Math.PI * this.Radius!! * this.Radius !!
    }

}