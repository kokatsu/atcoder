import std;

void main() {
    int n;
    readf("%d\n", n);

    int l = 10 ^^ 6 + 2;
    auto cnts = new int[](l);
    foreach (_; 0 .. n) {
        int a, b;
        readf("%d %d\n", a, b);

        ++cnts[a], --cnts[b+1];
    }

    int res;
    foreach (i; 0 .. l) {
        if (i > 0) cnts[i] += cnts[i-1];
        res = max(res, cnts[i]);
    }

    res.writeln;
}