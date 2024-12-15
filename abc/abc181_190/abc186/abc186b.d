import std;

void main() {
    int H, W;
    readf("%d %d\n", H, W);

    int mn = 100, lim = 100;
    auto cnts = new int[](lim + 1);
    foreach (i; 0 .. H) {
        auto A = readln.chomp.split.to!(int[]);

        foreach (a; A) {
            mn = min(mn, a);
            ++cnts[a];
        }
    }

    int res;
    foreach (i; mn + 1 .. lim + 1) {
        res += (i - mn) * cnts[i];
    }

    res.writeln;
}
