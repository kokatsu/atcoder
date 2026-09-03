import std;

void main() {
    long N, M;
    readfln("%d %d", N, M);

    long S, T;
    readfln("%d %d", S, T);

    if (S > T) {
        swap(S, T);
    }

    long res;
    foreach (_; 0 .. M) {
        long P, V;
        readfln("%d %d", P, V);

        if (S <= P && P <= T) {
            res += V;
        }
    }

    res.writeln;
}
