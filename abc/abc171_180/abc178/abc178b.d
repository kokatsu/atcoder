import std;

void main() {
    auto a = readln.chomp.split.to!(long[]);

    long res = long.min;
    foreach (i; 0 .. 4) {
        int x = i & 1, y = ((i >> 1) & 1) + 2;
        res = max(res, a[x] * a[y]);
    }

    res.writeln;
}
