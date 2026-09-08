import std;

void main() {
    int N, K, M;
    readfln("%d %d %d", N, K, M);

    long[] E, B;
    foreach (_; 0 .. N) {
        long H, P;
        readfln("%d %d", H, P);

        (H == 1 ? E : B) ~= P;
    }

    long res = -1, L = E.length.to!long;
    if (L >= M && N - L >= K - M) {
        E.sort!"a > b";
        B.sort!"a > b";

        res = E[0 .. M].sum + B[0 .. K - M].sum;
    }

    res.writeln;
}
