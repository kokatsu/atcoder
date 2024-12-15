import std;

void main() {
    long N;
    readf("%d\n", N);

    auto a = new long[](N);
    foreach (i; 0 .. N)
        readf("%d\n", a[i]);

    void f(ref long[] arr) {
        auto tmp = arr.dup.sort.uniq.array.assumeSorted;
        foreach (ref x; arr) {
            x = tmp.lowerBound(x).length;
        }
    }

    auto b = a.dup;
    f(b);

    foreach (x; b)
        x.writeln;
}
