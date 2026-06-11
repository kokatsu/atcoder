import std;

enum long L = 11;

void main() {
    long N, M;
    readfln("%d %d", N, M);

    long[] A = readln.chomp.split.to!(long[]);

    long[long][] C = new long[long][](L);
    foreach (a; A) {
        long len = a.to!string
            .length
            .to!long;
        ++C[len][a % M];
    }

    long res;
    foreach (a; A) {
        long b = a;
        foreach (i; 1 .. L) {
            b = (b * 10) % M;
            res += C[i].get((M - b) % M, 0);
        }
    }

    res.writeln;
}
