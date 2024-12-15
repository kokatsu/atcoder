import std;

void main() {
    int N;
    readf("%d\n", N);

    auto p = readln.chomp.split.to!(int[]);

    auto l = p.sum + 1;

    auto points = new bool[](l);
    points[0] = true;
    foreach (x; p) {
        foreach_reverse (i; 0 .. l - x) {
            points[i + x] |= points[i];
        }
    }

    auto res = points.count(true);
    res.writeln;
}
