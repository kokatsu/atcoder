import std;

void main() {
    int N;
    readf("%d\n", N);

    auto H = readln.chomp.split.to!(int[]);

    int res, mx;
    foreach (h; H) {
        if (mx <= h) {
            ++res;
            mx = h;
        }
    }

    res.writeln;
}
