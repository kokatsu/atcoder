import std;

void main() {
    int[] A1 = readln.chomp.split.to!(int[]);
    int[] A2 = readln.chomp.split.to!(int[]);
    int[] A3 = readln.chomp.split.to!(int[]);

    int count;
    foreach (x; A1) {
        foreach (y; A2) {
            foreach (z; A3) {
                int[] V = [x, y, z];
                if ([4, 5, 6].all!(i => V.canFind(i))) {
                    ++count;
                }
            }
        }
    }

    real num = count.to!real / (6 ^^ 3);

    string res = format("%.20f", num);
    res.writeln;
}
