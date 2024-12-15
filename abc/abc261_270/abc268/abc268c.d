import std;

void main() {
    int N;
    readf("%d\n", N);

    auto p = readln.chomp.split.to!(int[]);

    auto a = new int[](N), b = new int[](N), c = new int[](N);
    foreach (i, x; p) {
        ++a[(N + x - i - 1) % N], ++b[(N + x - i) % N], ++c[(N + x - i + 1) % N];
    }

    int res;
    foreach (i; 0 .. N) {
        res = max(res, a[i] + b[i] + c[i]);
    }

    res.writeln;
}
