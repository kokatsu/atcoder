import std;

void main() {
    long N, K;
    readf("%d %d\n", N, K);

    auto a = new long[](N);
    foreach (i; 0 .. N) readf("%d\n", a[i]);

    auto c = a.cumulativeFold!"a + b".array.assumeSorted;

    auto lb = c.lowerBound(K);

    auto res = lb.length + 1;
    res.writeln;
}