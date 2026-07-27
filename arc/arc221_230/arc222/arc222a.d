import std;

void main() {
    int T;
    readfln("%d", T);

    string[] A = new string[](T);
    foreach (ref a; A) {
        int N, M;
        readfln("%d %d", N, M);

        int D;
        foreach (_; 0 .. M) {
            int L, R;
            readfln("%d %d", L, R);

            D = max(D, R - L + 1);
        }

        a = format("%(%d %)", N.iota.map!(x => x % D + 1));
    }

    string res = format("%-(%s\n%)", A);
    res.writeln;
}
