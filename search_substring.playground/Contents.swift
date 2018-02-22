func findMatch(_ p: String, t: String) -> Bool {
	var i, j: Int
	var m = p.count;
	var n = t.count;
	
	for i in 0...(n-m) {
		j = 0
		var tIndex = t.startIndex
		tIndex = t.index(tIndex, offsetBy: (i + j))
		var pIndex = p.startIndex
		pIndex = p.index(pIndex, offsetBy: j)
		
		while (j < m) && (t[tIndex] == p[pIndex]) {
			j += 1
			if (j == m) {
				return true
			}
		}
	}
	return false
}

var p = "горошек"
var t = "мой зеленый горошек"

findMatch(p, t: t)

