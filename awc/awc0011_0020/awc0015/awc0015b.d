import std;

void main() {
    int N, K;
    readfln("%d %d", N, K);

    int[] P = readln.chomp.split.to!(int[]);

    long res = P.countUntil!"a >= b"(K);
    if (res >= 0) {
        ++res;
    }

    res.writeln;
}
