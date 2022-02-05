import std;

void main() {
    long N, Q;
    readf("%d %d\n", N, Q);

    auto a = readln.chomp.split.to!(long[]);

    auto b = a.dup;

    void f(ref long[] arr) {
        auto tmp = arr.dup.sort.uniq.array.assumeSorted;
        foreach (ref a; arr) {
            a = tmp.lowerBound(a).length;
        }
    }

    f(b);

    long[long] num;
    foreach (i, A; a) {
        if (A in num) continue;
        num[A] = b[i];
    }

    auto list = new long[][](N);
    foreach (i, B; b) {
        list[B] ~= i + 1;
    }

    foreach (_; 0 .. Q) {
        long x, k;
        readf("%d %d\n", x, k);

        long res = -1;
        if (x in num) {
            if (list[num[x]].length >= k) {
                res = list[num[x]][k-1];
            }
        }

        res.writeln;
    }
}