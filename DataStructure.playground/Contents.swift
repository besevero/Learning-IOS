struct Vector2D{
    var x: Float
    var y: Float

    func printCoordinates(){
        print("x:\(x) y:\(y)")
    }
}

let origin = Vector2D(x: 2, y: 0)

origin.printCoordinates()
print(origin.x)
print(origin.y)




