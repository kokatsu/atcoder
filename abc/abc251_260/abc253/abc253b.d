import std;

void main() {
    int H, W;
    readf("%d %d\n", H, W);

    int[] x, y;
    foreach (i; 0 .. H) {
        auto S = readln.chomp;
        foreach (j, s; S) {
            if (s == 'o')
                x ~= i, y ~= j.to!int;
        }
    }

    int res = abs(x[0] - x[1]) + abs(y[0] - y[1]);
    res.writeln;
}
