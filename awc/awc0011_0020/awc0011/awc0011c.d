import std;

void main() {
    long N, K;
    readfln("%d %d", N, K);

    long[] A = readln.chomp.split.to!(long[]);

    long res, OR;
    foreach (a; A) {
        if ((a & ~K) == 0) {
            ++res;
            OR |= a;
        }
    }

    if (OR != K || res == 0) {
        res = -1;
    }

    res.writeln;
}
