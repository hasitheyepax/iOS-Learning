import UIKit

var array = [6,2,3,9,4,1]

array = array.map{$0 + 1}

array.map{
    print("\($0) yo")
}
