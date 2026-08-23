import std;

void main() {
    long N, K, T;
    readfln("%d %d %d", N, K, T);

    long M;
    foreach (_; 0 .. N) {
        long D, R;
        readfln("%d %d", D, R);

        if (R >= K * D) {
            M += R;
        }
    }

    string res = M >= T ? "Yes" : "No";
    res.writeln;
}
