import std;

void main() {
    int N, X;
    readf("%d %d\n", N, X);

    auto x = readln.chomp.split.to!(int[]);
    x ~= X;

    x.sort;

    auto diff = new int[](N);
    foreach (i; 0 .. N) {
        diff[i] = x[i + 1] - x[i];
    }

    int res = diff.fold!((a, b) => gcd(a, b));
    res.writeln;
}
