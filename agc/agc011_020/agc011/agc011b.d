import std;

void main() {
    long N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(long[]);

    A.sort;

    long cnt, num;
    foreach (i, a; A) {
        if (num * 2 < a) cnt = i;
        num += a;
    }

    long res = N - cnt;
    res.writeln;
}