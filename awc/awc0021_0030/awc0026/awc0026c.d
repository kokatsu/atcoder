import std;

void main() {
    long N, T, E;
    readfln("%d %d %d", N, T, E);

    long[] P = readln.chomp.split.to!(long[]);

    P.sort;
    P[] *= T;

    long res, S;
    foreach (p; P) {
        if (S + p > E) {
            break;
        }

        ++res;
        S += p;
    }

    res.writeln;
}
