import std;

void main() {
    int N, M;
    readfln("%d %d", N, M);

    long[] T = new long[](N + 1);
    T[1 .. $] = readln.chomp.split.to!(long[]);

    long[] C = T.cumulativeFold!"a + b".array;

    long[] A = new long[](M);
    foreach (ref a; A) {
        long S, L, R;
        readfln("%d %d %d", S, L, R);

        a = S + C[R] - C[L - 1];
    }

    string res = format("%(%d\n%)", A);
    res.writeln;
}
