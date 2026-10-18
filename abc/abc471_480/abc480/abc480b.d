import std;

void main() {
    int N, M;
    readfln("%d %d", N, M);

    string[] S = new string[](N);
    foreach (i; 0 .. N) {
        readfln("%s", S[i]);
    }

    int[string] D = S.assocArray(N.iota);

    int[] R = new int[](N);
    foreach (_; 0 .. M) {
        string T;
        readfln("%s", T);

        int P = D.get(T, -1);
        if (P >= 0) {
            ++R[P];
            continue;
        }

        string[] L = S.filter!(s => s.length == T.length && levenshteinDistance(s, T) == 1).array;
        if (L.length == 1) {
            ++R[D[L.front]];
        }
    }

    string res = format("%(%d\n%)", R);
    res.writeln;
}
