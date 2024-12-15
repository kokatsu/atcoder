import std;

void main() {
    long N, K;
    readf("%d %d\n", N, K);

    long lim = 10 ^^ 5 + 1;
    auto list = new long[](lim);
    foreach (_; 0 .. N) {
        long a, b;
        readf("%d %d\n", a, b);

        list[a] += b;
    }

    long num;
    foreach (i, l; list) {
        num += l;

        if (num >= K) {
            i.writeln;
            break;
        }
    }
}
