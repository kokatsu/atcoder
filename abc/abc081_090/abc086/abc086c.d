import std;

void main() {
    int N;
    readf("%d\n", N);

    int s, u, v;
    string res = "Yes";
    foreach (_; 0 .. N) {
        int t, x, y;
        readf("%d %d %d\n", t, x, y);

        if (res == "No") {
            continue;
        }

        int l = abs(x-u) + abs(y-v);
        int d = t - s;
        if (d < l || d % 2 != l % 2) {
            res = "No";
        }

        s = t, u = x, v = y;
    }

    res.writeln;
}