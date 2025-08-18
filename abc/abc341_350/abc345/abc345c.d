import std;

void main() {
    string S;
    readf("%s\n", S);

    long[] C = new long[](26);
    foreach (s; S) {
        ++C[s - 'a'];
    }

    long L = S.length.to!long;

    long M = L ^^ 2;
    long[] A = C.map!(c => c ^^ 2).array;
    long P = A.any!(a => a > 1) ? 1 : 0;

    long res = (M - A.sum) / 2 + P;
    res.writeln;
}
