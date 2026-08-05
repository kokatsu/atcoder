import std;

void main() {
    int N, K;
    readfln("%d %d", N, K);

    int[] A = readln.chomp.split.to!(int[]);

    long res = A.countUntil(K);
    if (res >= 0) {
        ++res;
    }

    res.writeln;
}
