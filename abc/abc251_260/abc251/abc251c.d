import std;

void main() {
    long N;
    readf("%d\n", N);

    long res, mx = -1;
    bool[string] same;
    foreach (i; 0 .. N) {
        auto input = readln.chomp.split;
        auto S = input[0];
        auto T = input[1].to!long;

        if (!(S in same)) {
            if (mx < T) {
                res = i + 1, mx = T;
            }
        }
        same[S] = true;
    }

    res.writeln;
}
